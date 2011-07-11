//
//  Person.h
//  iObserve-sb
//
//  Created by Anthony Perritano on 7/8/11.
//  Copyright (c) 2011 .t. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Group;

@interface Person : NSManagedObject {
@private
}
@property (nonatomic, retain) NSString * age;
@property (nonatomic, retain) NSString * gender;
@property (nonatomic, retain) NSString * personType;
@property (nonatomic, retain) Group *whatGroup;

@end
