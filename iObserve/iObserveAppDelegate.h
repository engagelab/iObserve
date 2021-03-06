//
//  iObserveAppDelegate.h
//  iObserve
//
//  Created by Anthony John Perritano on 4/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface iObserveAppDelegate : NSObject <UIApplicationDelegate> {
  
@private
    TTRootViewController* _rootViewController;
}


@property (nonatomic, retain, readonly) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, retain, readonly) NSManagedObjectModel *managedObjectModel;
@property (nonatomic, retain, readonly) NSPersistentStoreCoordinator *persistentStoreCoordinator;



- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
