//
//  Map.h
//  iObserve-sb
//
//  Created by Anthony Perritano on 7/11/11.
//  Copyright (c) 2011 .t. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class MapEntry, Report;

@interface Map : NSManagedObject {
@private
}
@property (nonatomic, retain) NSSet *mapEntries;
@property (nonatomic, retain) Report *whichReport;
@end

@interface Map (CoreDataGeneratedAccessors)

- (void)addMapEntriesObject:(MapEntry *)value;
- (void)removeMapEntriesObject:(MapEntry *)value;
- (void)addMapEntries:(NSSet *)values;
- (void)removeMapEntries:(NSSet *)values;

@end
