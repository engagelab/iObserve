//
//  ReportEntry.m
//  iObserve-sb
//
//  Created by Anthony Perritano on 7/11/11.
//  Copyright (c) 2011 .t. All rights reserved.
//

#import "ReportEntry.h"
#import "Activity.h"
#import "MapEntry.h"
#import "Person.h"
#import "Report.h"


@implementation ReportEntry
@dynamic timestamp;
@dynamic activities;
@dynamic people;
@dynamic whichReport;
@dynamic whichMapEntry;

+ (ReportEntry *)withEmptyAttributesInManagedObjectContext:(NSManagedObjectContext *)context {
    
    ReportEntry *reportEntry = nil;
    
    reportEntry = [NSEntityDescription insertNewObjectForEntityForName:@"ReportEntry" inManagedObjectContext:context];
    
    reportEntry.timestamp = [NSDate date];
    return reportEntry;
    
}

+ (ReportEntry *)withTestAttributesInManagedObjectContext:(NSManagedObjectContext *)context {
    
    ReportEntry *reportEntry = nil;
    
    reportEntry = [NSEntityDescription insertNewObjectForEntityForName:@"ReportEntry" inManagedObjectContext:context];
    reportEntry.timestamp = [NSDate date];

    return reportEntry;
}



@end
