//
//  CoreDataTableViewController.h
//
//  Created for Stanford CS193p Spring 2010
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface CoreDataTableViewController : UITableViewController <NSFetchedResultsControllerDelegate> {
    NSFetchedResultsController *_fetchedResultsController;
    NSManagedObjectContext *managedObjectContext;
}

@property (nonatomic, strong)  NSManagedObjectContext *managedObjectContext;
@property (nonatomic, retain)  NSFetchedResultsController *fetchedResultsController;

@end