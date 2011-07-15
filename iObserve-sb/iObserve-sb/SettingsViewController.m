//
//  SettingsViewController.m
//  iObserve-sb
//
//  Created by Anthony Perritano on 7/13/11.
//  Copyright 2011 .t. All rights reserved.
//

#import "SettingsViewController.h"
#import "ImagePickerViewController.h"
#import "MapImage.h"
#import "iObserve_sbAppDelegate.h"

@implementation SettingsViewController
@synthesize mapNameLabel;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    standardUserDefaults = [NSUserDefaults standardUserDefaults];
    
    // getting an NSString object
    NSString *roomMapName = [standardUserDefaults stringForKey:@"room-map"];
    
    mapNameLabel.text = roomMapName;
        
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setMapNameLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return 
    ( interfaceOrientation == UIInterfaceOrientationLandscapeLeft || 
     interfaceOrientation == UIInterfaceOrientationLandscapeRight );
} 


@end
