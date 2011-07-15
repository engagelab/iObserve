//
//  MapImage.m
//  iObserve-sb
//
//  Created by Anthony Perritano on 7/14/11.
//  Copyright (c) 2011 .t. All rights reserved.
//

#import "MapImage.h"


@implementation MapImage
@dynamic timestamp;
@dynamic title;
@dynamic image;

+ (MapImage *)mapImageWithImage:(UIImage *)someImage WithInManagedObjectContext:(NSManagedObjectContext *)context {
    MapImage *mapImage= nil;
	
    mapImage = [NSEntityDescription insertNewObjectForEntityForName:@"MapImage" inManagedObjectContext:context];
    mapImage.timestamp =  [NSDate date];
    
   
    
    mapImage.image = UIImagePNGRepresentation( someImage );
    
    
    return mapImage;
}

@end
