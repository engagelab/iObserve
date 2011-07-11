//
//  iObserve_sbAppDelegate.h
//  iObserve-sb
//
//  Created by Anthony Perritano on 7/8/11.
//  Copyright 2011 .t. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface iObserve_sbAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
