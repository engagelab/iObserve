//
//  iObserve_sbViewController.h
//  iObserve-sb
//
//  Created by Anthony Perritano on 7/3/11.
//  Copyright 2011 .t. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DrawImageView.h"
#import "Report.h"

@interface iObserve_sbViewController : UIViewController {
    
    BOOL drawToggle;	
	BOOL mouseSwiped;	
	int mouseMoved;
    
    UIImageView *drawImageView;
    UIButton *drawToggleButton;
    UIImageView *mapImage;
    CGPoint lastPoint;
    
    Report *report;
    
}
@property (nonatomic, strong) IBOutlet UIButton *drawToggleButton;

@property (nonatomic, strong) IBOutlet UIImageView *drawImageView;

@property (nonatomic, strong) IBOutlet UIImageView *mapImage;

- (IBAction)newReport:(id)sender;

@end
