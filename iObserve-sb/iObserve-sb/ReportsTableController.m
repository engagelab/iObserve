//
//  ReportsTableController.m
//  iObserve-sb
//
//  Created by Anthony Perritano on 7/5/11.
//  Copyright 2011 .t. All rights reserved.
//

#import "ReportsTableController.h"
#import "ReportDetailsViewController.h"
#import "ReportsTableViewCell.h"
#import "iObserve_sbAppDelegate.h"
#import "Report.h"

@implementation ReportsTableController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([[segue identifier] isEqualToString:@"showReportDetails"] ) {
        NSLog(@"Showing report details");
        ReportDetailsViewController *rdc = [segue destinationViewController];
    }
}

- (NSFetchedResultsController *)fetchedResultsController {
    
    if (_fetchedResultsController != nil) {
        return _fetchedResultsController;
    }
    
    iObserve_sbAppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    
    NSManagedObjectContext *_context = [appDelegate managedObjectContext];
    
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Report" inManagedObjectContext:_context];
    [fetchRequest setEntity:entity];
    
    NSSortDescriptor *sort = [[NSSortDescriptor alloc] initWithKey:@"timestamp" ascending:NO];
    [fetchRequest setSortDescriptors:[NSArray arrayWithObject:sort]];
    
    [fetchRequest setFetchBatchSize:20];
    
    NSFetchedResultsController *theFetchedResultsController = [[NSFetchedResultsController alloc] initWithFetchRequest:fetchRequest managedObjectContext:_context sectionNameKeyPath:nil cacheName:@"Root"];
    
    
    self.fetchedResultsController = theFetchedResultsController;
    _fetchedResultsController.delegate = self;

    
    return _fetchedResultsController;    
    
}




#pragma mark - table functions

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section { 
    id <NSFetchedResultsSectionInfo> sectionInfo = [[_fetchedResultsController sections] objectAtIndex:section];
    NSLog(@"section header name %@",[sectionInfo name]);
    
    [formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss ZZ"];
    NSDate *date = [formatter dateFromString: [sectionInfo name] ];
    
     [formatter setDateFormat:@"MM-dd-yyy"];
    NSString *formattedDateStr = [formatter stringFromDate:date];
    return formattedDateStr;
}

- (void)configureCell:(UITableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath {
    Report *info = [_fetchedResultsController objectAtIndexPath:indexPath];
    
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat: @"yyyy-MM-dd HH:mm:ss"]; 
    
    ReportsTableViewCell *rc = (ReportsTableViewCell *)cell;
    int r = rand() % 74;
    
    
    rc.dataPointNumberLabel.text = [NSString stringWithFormat:@"Data points: %d",r];
    rc.timestampLabel.text = [NSString stringWithFormat:@"Creation Time: %@", [dateFormat stringFromDate:info.timestamp]];
}

- (UITableViewCell *)tableView:(UITableView *)tableView 
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"reportCell";
    
    ReportsTableViewCell *cell = 
    [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[ReportsTableViewCell alloc] 
                initWithStyle:UITableViewCellStyleSubtitle 
                reuseIdentifier:CellIdentifier];
    }
    
    // Set up the cell...
    [self configureCell:cell atIndexPath:indexPath];
    
    return cell;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Reports";
    formatter = [[NSDateFormatter alloc] init];
   
}




@end
