//
//  ReportsTableController.h
//  iObserve-sb
//
//  Created by Anthony Perritano on 7/5/11.
//  Copyright 2011 .t. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CoreDataTableViewController.h"

@interface ReportsTableController : UITableViewController <NSFetchedResultsControllerDelegate> {
    NSFetchedResultsController *_fetchedResultsController;
    NSManagedObjectContext *managedObjectContext;
    NSDateFormatter *formatter;
}

@property (nonatomic, strong)  NSManagedObjectContext *managedObjectContext;
@property (nonatomic, retain)  NSFetchedResultsController *fetchedResultsController;

@end




