//
//  Person.h
//  iObserve-sb
//
//  Created by Anthony Perritano on 7/11/11.
//  Copyright (c) 2011 .t. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Report, ReportEntry;

@interface Person : NSManagedObject {
@private
}
@property (nonatomic, retain) NSString * age;
@property (nonatomic, retain) NSString * personType;
@property (nonatomic, retain) NSString * gender;
@property (nonatomic, retain) Report *whichReport;
@property (nonatomic, retain) ReportEntry *whichReportEntry;

+ (Person *)withEmptyAttributesInManagedObjectContext:(NSManagedObjectContext *)context;

+ (Person *)withTestAttributesInManagedObjectContext:(NSManagedObjectContext *)context;

@end
