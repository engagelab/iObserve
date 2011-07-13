//
//  ReportDetailViewController.m
//  iObserve-sb
//
//  Created by Anthony Perritano on 7/6/11.
//  Copyright 2011 .t. All rights reserved.
//

#import "ReportDetailsViewController.h"
#import "ReportDetailTextCellView.h"

@implementation ReportDetailsViewController

@synthesize report;

- (NSInteger)tableView:(UITableView *)table numberOfRowsInSection:(NSInteger)section {
    return [report.reportEntries count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"reportDetailsCell";
    
    ReportDetailTextCellView *cell = 
    [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[ReportDetailTextCellView alloc] 
                initWithStyle:UITableViewCellStyleSubtitle 
                reuseIdentifier:CellIdentifier];
    }
    
    ReportEntry *re = [reportEntriesSorted objectAtIndex:indexPath.row];

    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat: @"yyyy-MM-dd HH:mm:ss"]; 
    
    cell.numberLabel.text = [NSString stringWithFormat:@"%d.",indexPath.row+1];
    cell.timeLabel.text = [dateFormat stringFromDate: re.timestamp];
    cell.personLabel.text = [NSString stringWithFormat: @"persons %d", re.people.count];
        
    return cell;

}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Reports Details";
    
    NSSet *re = [report reportEntries];
    
    NSSortDescriptor *timestamp = [[NSSortDescriptor alloc] initWithKey:@"timestamp" ascending:YES];

    
  
    reportEntriesSorted = [report.reportEntries sortedArrayUsingDescriptors: [NSArray arrayWithObjects:timestamp,nil]];
    
}


@end
