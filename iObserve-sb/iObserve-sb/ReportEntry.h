//
//  ReportEntry.h
//  iObserve-sb
//
//  Created by Anthony Perritano on 7/11/11.
//  Copyright (c) 2011 .t. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Activity, MapEntry, Person, Report;

@interface ReportEntry : NSManagedObject {
@private
}
@property (nonatomic, retain) NSDate * timestamp;
@property (nonatomic, retain) NSSet *activities;
@property (nonatomic, retain) NSSet *people;
@property (nonatomic, retain) Report *whichReport;
@property (nonatomic, retain) MapEntry *whichMapEntry;
@end

@interface ReportEntry (CoreDataGeneratedAccessors)

+ (ReportEntry *)withEmptyAttributesInManagedObjectContext:(NSManagedObjectContext *)context;

+ (ReportEntry *)withTestAttributesInManagedObjectContext:(NSManagedObjectContext *)context;


- (void)addActivitiesObject:(Activity *)value;
- (void)removeActivitiesObject:(Activity *)value;
- (void)addActivities:(NSSet *)values;
- (void)removeActivities:(NSSet *)values;

- (void)addPeopleObject:(Person *)value;
- (void)removePeopleObject:(Person *)value;
- (void)addPeople:(NSSet *)values;
- (void)removePeople:(NSSet *)values;


@end
