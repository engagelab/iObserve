//
//  Report.h
//  iObserve-sb
//
//  Created by Anthony Perritano on 7/11/11.
//  Copyright (c) 2011 .t. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Map, Person, ReportEntry;

@interface Report : NSManagedObject {
@private
}
@property (nonatomic, retain) NSDate * timestamp;
@property (nonatomic, retain) NSData * modifiedMap;
@property (nonatomic, retain) NSSet *people;
@property (nonatomic, retain) NSSet *reportEntries;
@property (nonatomic, retain) Map *map;
@end

@interface Report (CoreDataGeneratedAccessors)

- (void)addPeopleObject:(Person *)value;
- (void)removePeopleObject:(Person *)value;
- (void)addPeople:(NSSet *)values;
- (void)removePeople:(NSSet *)values;

- (void)addReportEntriesObject:(ReportEntry *)value;
- (void)removeReportEntriesObject:(ReportEntry *)value;
- (void)addReportEntries:(NSSet *)values;
- (void)removeReportEntries:(NSSet *)values;

+ (Report *)reportWithTestAttributesInManagedObjectContext:(NSManagedObjectContext *)context;

+ (Report *)reportWithEmptyPersonInManagedObjectContext:(NSManagedObjectContext *)context;


@end
