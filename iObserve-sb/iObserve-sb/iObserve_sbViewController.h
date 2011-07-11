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
  
    CGPoint lastPoint;
	BOOL mouseSwiped;	
	int mouseMoved;
    UIImageView *drawImageView;
    BOOL drawToggle;	
    UIButton *drawToggleButton;
}
@property (nonatomic, strong) IBOutlet UIButton *drawToggleButton;

@property (nonatomic, strong) IBOutlet UIImageView *drawImageView;

@property (nonatomic, strong) IBOutlet UIImageView *mapImage;


- (IBAction)viewReports:(id)sender;

@end
