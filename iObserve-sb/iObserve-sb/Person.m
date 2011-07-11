//
//  Person.m
//  iObserve-sb
//
//  Created by Anthony Perritano on 7/11/11.
//  Copyright (c) 2011 .t. All rights reserved.
//

#import "Person.h"
#import "Report.h"
#import "ReportEntry.h"
#include <stdlib.h>


@implementation Person
@dynamic age;
@dynamic personType;
@dynamic gender;
@dynamic whichReport;
@dynamic whichReportEntry;

+ (Person *)withEmptyAttributesInManagedObjectContext:(NSManagedObjectContext *)context {
    
    Person *person = nil;
	
    person = [NSEntityDescription insertNewObjectForEntityForName:@"Person" inManagedObjectContext:context];


    
    
	return person;
    
}

+ (Person *)withTestAttributesInManagedObjectContext:(NSManagedObjectContext *)context {
    
    Person *person = nil;
	
    person = [NSEntityDescription insertNewObjectForEntityForName:@"Person" inManagedObjectContext:context];
    
    int r = rand() % 74;
    
    person.age = [NSString stringWithFormat:@"%d",r];
    person.gender = @"Male";
    person.personType = @"Adult";
    
    
	return person;
}

@end
