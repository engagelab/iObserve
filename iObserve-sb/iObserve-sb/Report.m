//
//  Report.m
//  iObserve-sb
//
//  Created by Anthony Perritano on 7/11/11.
//  Copyright (c) 2011 .t. All rights reserved.
//

#import "Report.h"
#import "Map.h"
#import "Person.h"
#import "ReportEntry.h"


@implementation Report
@dynamic timestamp;
@dynamic modifiedMap;
@dynamic people;
@dynamic reportEntries;
@dynamic map;


+ (Report *)reportWithTestAttributesInManagedObjectContext:(NSManagedObjectContext *)context {
    Report *report = nil;
	
    report = [NSEntityDescription insertNewObjectForEntityForName:@"Report" inManagedObjectContext:context];
    report.timestamp =  [NSDate date];
    Person *p1 = [Person withTestAttributesInManagedObjectContext: context];
    Person *p2 = [Person withTestAttributesInManagedObjectContext: context];
    Person *p3 = [Person withTestAttributesInManagedObjectContext: context];
    
    [report addPeopleObject:p1];
    [report addPeopleObject:p2];
    [report addPeopleObject:p3];
    
    ReportEntry *re1 = [ReportEntry withTestAttributesInManagedObjectContext:context];
    [re1 addPeopleObject:p1];
    
    [report addReportEntriesObject:re1];

    ReportEntry *re2 = [ReportEntry withTestAttributesInManagedObjectContext:context];
    [re2 addPeopleObject:p2];
    [re2 addPeopleObject:p3];    
    [report addReportEntriesObject:re2];
    
    return report;
}
    
+ (Report *)reportWithEmptyPersonInManagedObjectContext:(NSManagedObjectContext *)context {
	Report *report = nil;
	
    report = [NSEntityDescription insertNewObjectForEntityForName:@"Report" inManagedObjectContext:context];
    report.timestamp =  [NSDate date];
    Person *person = [Person withTestAttributesInManagedObjectContext: context];
    
    [report addPeopleObject:person];
	return report;
}

@end
