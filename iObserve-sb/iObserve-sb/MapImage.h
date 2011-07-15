//
//  MapImage.h
//  iObserve-sb
//
//  Created by Anthony Perritano on 7/14/11.
//  Copyright (c) 2011 .t. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface MapImage : NSManagedObject {
@private
}
@property (nonatomic, retain) NSDate * timestamp;
@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSData * image;

+ (MapImage *)mapImageWithImage:(UIImage *)someImage WithInManagedObjectContext:(NSManagedObjectContext *)context;

@end
