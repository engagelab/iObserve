//
//  SettingsViewController.h
//  iObserve-sb
//
//  Created by Anthony Perritano on 7/13/11.
//  Copyright 2011 .t. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SettingsViewController : UIViewController <UIImagePickerControllerDelegate> {
    UILabel *mapNameLabel;
    UIImagePickerController *picker;
    NSUserDefaults *standardUserDefaults;
    UIImage *savedImage;
}
@property (nonatomic, strong) IBOutlet UILabel *mapNameLabel;

@end
