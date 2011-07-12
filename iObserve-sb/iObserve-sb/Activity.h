//
//  Activity.h
//  iObserve-sb
//
//  Created by Anthony Perritano on 7/11/11.
//  Copyright (c) 2011 .t. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class ReportEntry;

@interface Activity : NSManagedObject {
@private
}
@property (nonatomic, retain) NSString * type;
@property (nonatomic, retain) NSSet *whichReportEntry;
@end

@interface Activity (CoreDataGeneratedAccessors)

- (void)addWhichReportEntryObject:(ReportEntry *)value;
- (void)removeWhichReportEntryObject:(ReportEntry *)value;
- (void)addWhichReportEntry:(NSSet *)values;
- (void)removeWhichReportEntry:(NSSet *)values;

@end
