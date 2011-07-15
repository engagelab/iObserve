//
//  ImagePickerViewController.m
//  iObserve-sb
//
//  Created by Anthony Perritano on 7/14/11.
//  Copyright 2011 .t. All rights reserved.
//

#import "ImagePickerViewController.h"

@implementation ImagePickerViewController

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return 
    ( interfaceOrientation == UIInterfaceOrientationLandscapeLeft || 
     interfaceOrientation == UIInterfaceOrientationLandscapeRight );
} 

- (BOOL)_isSupportedInterfaceOrientation:(UIDeviceOrientation)orientation{
    return  ( orientation == UIInterfaceOrientationLandscapeLeft || 
             orientation == UIInterfaceOrientationLandscapeRight );
}
@end
