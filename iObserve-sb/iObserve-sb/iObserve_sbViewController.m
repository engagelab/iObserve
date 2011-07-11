//
//  iObserve_sbViewController.m
//  iObserve-sb
//
//  Created by Anthony Perritano on 7/3/11.
//  Copyright 2011 .t. All rights reserved.
//

#import "iObserve_sbViewController.h"

@implementation iObserve_sbViewController
@synthesize drawToggleButton;
@synthesize drawImageView;
@synthesize mapImage;


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}



- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    if( drawToggle == YES) {
        mouseSwiped = NO;
        UITouch *touch = [touches anyObject];
        
        if ([touch tapCount] == 2) {
            drawImageView.image = nil;
            return;
        }
        
        lastPoint = [touch locationInView:self.view];
        lastPoint.y -= 20;
    }
}
- (IBAction)DrawToggle:(id)sender {
    drawToggle = !drawToggle;
    NSLog(@"Draw toggle %d", drawToggle);
    if(drawToggle == YES) {
        [drawToggleButton setTitle:@"Drawing is On" forState:UIControlStateNormal];

    } else {
        [drawToggleButton setTitle:@"Drawing is Off" forState:UIControlStateNormal];

    }
}


- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    if( drawToggle == YES) {
        mouseSwiped = YES;
        
        UITouch *touch = [touches anyObject];	
        CGPoint currentPoint = [touch locationInView:self.view];
        currentPoint.y -= 20;
        
        
        UIGraphicsBeginImageContext(self.view.frame.size);
        [drawImageView.image drawInRect:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
        CGContextSetLineCap(UIGraphicsGetCurrentContext(), kCGLineCapRound);
        CGContextSetLineWidth(UIGraphicsGetCurrentContext(), 5.0);
        CGContextSetRGBStrokeColor(UIGraphicsGetCurrentContext(), 1.0, 0.0, 0.0, 1.0);
        CGContextBeginPath(UIGraphicsGetCurrentContext());
        CGContextMoveToPoint(UIGraphicsGetCurrentContext(), lastPoint.x, lastPoint.y);
        CGContextAddLineToPoint(UIGraphicsGetCurrentContext(), currentPoint.x, currentPoint.y);
        CGContextStrokePath(UIGraphicsGetCurrentContext());
        drawImageView.image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        
        lastPoint = currentPoint;
        
        mouseMoved++;
        
        if (mouseMoved == 10) {
            mouseMoved = 0;
        }
    }
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
	
    if( drawToggle == YES) {
        
        UITouch *touch = [touches anyObject];
        
        if ([touch tapCount] == 2) {
            drawImageView.image = nil;
            return;
        }
        
        
        if(!mouseSwiped) {
            UIGraphicsBeginImageContext(self.view.frame.size);
            [drawImageView.image drawInRect:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
            CGContextSetLineCap(UIGraphicsGetCurrentContext(), kCGLineCapRound);
            CGContextSetLineWidth(UIGraphicsGetCurrentContext(), 5.0);
            CGContextSetRGBStrokeColor(UIGraphicsGetCurrentContext(), 1.0, 0.0, 0.0, 1.0);
            CGContextMoveToPoint(UIGraphicsGetCurrentContext(), lastPoint.x, lastPoint.y);
            CGContextAddLineToPoint(UIGraphicsGetCurrentContext(), lastPoint.x, lastPoint.y);
            CGContextStrokePath(UIGraphicsGetCurrentContext());
            CGContextFlush(UIGraphicsGetCurrentContext());
            drawImageView.image = UIGraphicsGetImageFromCurrentImageContext();
            UIGraphicsEndImageContext();
        }
    }
}



#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    
    
    [self setDrawToggleButton:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;
}

- (IBAction)viewReports:(id)sender {
}
@end
