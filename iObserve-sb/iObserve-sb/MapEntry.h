//
//  MapEntry.h
//  iObserve-sb
//
//  Created by Anthony Perritano on 7/11/11.
//  Copyright (c) 2011 .t. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Map, ReportEntry;

@interface MapEntry : NSManagedObject {
@private
}
@property (nonatomic, retain) NSString * coordinate;
@property (nonatomic, retain) ReportEntry *ReportEntry;
@property (nonatomic, retain) Map *whichMap;

@end
