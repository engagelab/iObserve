//
//  iObserve_sbViewController.h
//  iObserve-sb
//
//  Created by Anthony Perritano on 7/3/11.
//  Copyright 2011 .t. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DrawImageView.h"

@interface iObserve_sbViewController : UIViewController {
    
    UIImageView *mapImage;
    DrawImageView *customView;
    CGPoint lastPoint;
	BOOL mouseSwiped;	
	int mouseMoved;
}

@property (nonatomic, strong) IBOutlet UIImageView *mapImage;

@property (nonatomic, strong) IBOutlet DrawImageView *customView;

- (IBAction)viewReports:(id)sender;

@end
