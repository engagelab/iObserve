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

@interface iObserve_sbViewController : UIViewController <UIPopoverControllerDelegate,UIImagePickerControllerDelegate>{
    
    BOOL drawToggle;	
	BOOL mouseSwiped;	
	int mouseMoved;
    
    UIImageView *drawImageView;
    UIButton *drawToggleButton;
    UIImageView *mapImage;
    UIButton *settingsButton;
    CGPoint lastPoint;
    
    Report *report;
    UIPopoverController *popoverController;
    UIImagePickerController *picker;
    
}
@property (nonatomic, strong) IBOutlet UIButton *drawToggleButton;

@property (nonatomic, strong) IBOutlet UIImageView *drawImageView;

@property (nonatomic, strong) IBOutlet UIImageView *mapImage;
@property (nonatomic, strong) IBOutlet UIButton *settingsButton;
@property (nonatomic, strong)  UIPopoverController *popoverController;

- (IBAction)newReport:(id)sender;
- (IBAction)showSettingsController:(id)sender;
- (IBAction)changeMapImage:(id)sender;


@end
