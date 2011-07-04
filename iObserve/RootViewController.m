

#import "RootViewController.h"
#import "TransparentToolbar.h"


@implementation RootViewController


@synthesize button = _button;
@synthesize pinView =_pinView;
@synthesize pinLabel = _pinLabel;
@synthesize mapView = _mapView;

int clicked = 0;

///////////////////////////////////////////////////////////////////////////////////////////////////
-(id)initWithNibName:(NSString *)nibName bundle:(NSBundle *)bundle {
  if ((self = [super initWithNibName:nibName bundle:bundle])) {
    self.title = @"Collect";
    self.navigationItem.backBarButtonItem =
    [[[UIBarButtonItem alloc] initWithTitle: @"Root"
                                      style: UIBarButtonItemStyleBordered
                                     target: nil
                                     action: nil] autorelease];
        //self.tableViewStyle = UITableViewStyleGrouped;
      [self makeLeftButtonBarItems];
      [self makeRightButtonBarItems];
  }

  return self;
}

- (IBAction) buttonClicked:(UIButton*) sender{
    ++clicked;
}

- (IBAction) createNewPersonPin:(UIButton*) button {
    TTURLAction* action = [TTURLAction actionWithURLPath:@"tt://pin"];
    action.sourceView = button;
    action.animated = YES;
    [[TTNavigator navigator] openURLAction:action];
}

#pragma mark -
#pragma mark Navigation items

-(void)makeLeftButtonBarItems {
    
    // create a toolbar where we can place some buttons
    TransparentToolbar* toolbar = [[TransparentToolbar alloc]
                          initWithFrame:CGRectMake(0, 0, 200, 45)];

   // toolbar.backgroundColor = [UIColor redColor];
    
    // create an array for the buttons
    NSMutableArray* buttons = [[NSMutableArray alloc] initWithCapacity:2];
    

   
    
    // create a spacer between the buttons
    UIBarButtonItem *spacer = [[UIBarButtonItem alloc]
                               initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace
                               target:nil
                               action:nil];
    [buttons addObject:spacer];
    [spacer release];
    
    // create a standard delete button with the trash icon
    UIBarButtonItem *addPersonButton = [[UIBarButtonItem alloc] initWithTitle:@"Add Person" style: UIBarButtonItemStyleBordered target:self action:@selector(createNewPersonPin:)];
    
  
    TTButton* button = [TTButton buttonWithStyle:@"toolbarButton:" title:@"Embossed Button"];
    [button addTarget:self action:@selector(createNewPersonPin:) forControlEvents:UIControlEventTouchUpInside];
    [button sizeToFit];
    
    addPersonButton.customView = button;
    //[toolbar addSubview:button];

    [buttons addObject:addPersonButton];
    [button release];
    [addPersonButton release];
    
    // put the buttons in the toolbar and release them
    [toolbar setItems:buttons animated:NO];
    [buttons release];
    
    // place the toolbar into the navigation bar
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]
                                              initWithCustomView:toolbar];
    [toolbar release];
    
}

-(void)makeRightButtonBarItems {
    
    // create a toolbar where we can place some buttons
    TransparentToolbar* toolbar = [[TransparentToolbar alloc]
                                   initWithFrame:CGRectMake(0, 0, 285, 45)];
    
    //toolbar.backgroundColor = [UIColor redColor];
    // create an array for the buttons
    NSMutableArray* buttons = [[NSMutableArray alloc] initWithCapacity:3];
    
    
    UIBarButtonItem *settingsButton = [[UIBarButtonItem alloc] initWithTitle:@"Settings" style: UIBarButtonItemStyleBordered target:self action:@selector(increaseFont)];
    
    
    [buttons addObject:settingsButton];
    [settingsButton release];
    
    // create a spacer between the buttons
    UIBarButtonItem *spacer = [[UIBarButtonItem alloc]
                               initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace
                               target:nil
                               action:nil];
    [buttons addObject:spacer];
    [spacer release];
    
    // create a standard delete button with the trash icon
    UIBarButtonItem *viewReports = [[UIBarButtonItem alloc] initWithTitle:@"View Reports" style: UIBarButtonItemStyleBordered target:self action:@selector(increaseFont)];
    
    
    [buttons addObject:viewReports];
    [viewReports release];
    
    UIBarButtonItem *newReportButton = [[UIBarButtonItem alloc] initWithTitle:@"New Report" style: UIBarButtonItemStyleBordered target:self action:@selector(increaseFont)] ;
    
    
    [buttons addObject:newReportButton];
    [newReportButton release];
    
    // put the buttons in the toolbar and release them
    [toolbar setItems:buttons animated:NO];
    [buttons release];
    
    // place the toolbar into the navigation bar
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]
                                             initWithCustomView:toolbar];
    [toolbar release];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
	
    
    
	NSLog(@"viewDidLoad frame: %@", NSStringFromCGRect(self.view.frame));
 
   

}

#pragma mark -
#pragma mark Three20 Methods

- (void) loadView
{
    [super loadView];
    
    TTDPRINT("loadView");
    
    [[NSBundle mainBundle] loadNibNamed: NSStringFromClass([self class]) owner: self options: nil];

    // load automatically the NIB
  
   
   // [self.view addSubview:[nibViews objectAtIndex:0]];
    
       
//     UIColor* black = RGBCOLOR(158, 163, 172);
//    
//    _pinView.style =    [TTShapeStyle styleWithShape:[TTRoundedRectangleShape shapeWithRadius:10] next: 
//                        [TTSolidFillStyle styleWithColor:[UIColor clearColor] next: 
//                        [TTInnerShadowStyle styleWithColor:RGBACOLOR(0,0,0,0.5) blur:6 offset:CGSizeMake(1, 1) next:
//                         [TTSolidBorderStyle styleWithColor:black width:1 next:nil]]]];
//    
    _pinLabel.text = @"pin";
    
//     TTDPRINT("_pinLabel %@",NSStringFromCGRect(self._pinLabel.view) );
    
    
    [[DKDragDropServer sharedServer] markViewAsDraggable:_pinLabel forDrag:@"MainDrag" withDataSource:self context:nil];
    //	
	[[DKDragDropServer sharedServer] markViewAsDropTarget:_mapView forTypes:[NSArray arrayWithObject:@"public.text"] withDelegate:self];


}

#pragma mark -
#pragma mark DKDragDataProvider Methods

- (NSArray *)typesSupportedForDrag:(NSString *)dragID forView:(UIView *)dragView context:(void *)context {
	return [NSArray arrayWithObject:@"public.text"];
}

//request the data from the view.
- (NSData *)dataForType:(NSString *)type withDrag:(NSString *)dragID forView:(UIView *)dragView context:(void *)context {
	
	if ([type isEqualToString:@"public.text"]) {
		return [@"Testing 1,2,3" dataUsingEncoding:NSUTF8StringEncoding];
	}
	
	return nil;
}

#pragma mark -
#pragma mark Drag Methods

- (void)dragDidEnterTargetView:(UIView *)targetView {
	TTDINFO("dragDidEnterTargetView", targetView);
}

- (void)dragDidLeaveTargetView:(UIView *)targetView {
    	TTDINFO("dragDidLeaveTargetView", targetView);
}

- (void)drag:(NSString *)dropID completedOnTargetView:(UIView *)targetView withDragPasteboard:(UIPasteboard *)dragPasteboard context:(void *)context {
	NSLog(@"drag: %@ completedOnTargetView:%@ dragPasteboard:%@ context:%p", dropID, targetView, dragPasteboard, context);
	
	NSString *text = [[NSString alloc] initWithData:[[dragPasteboard valuesForPasteboardType:@"public.text" inItemSet:nil] lastObject]
										   encoding:NSUTF8StringEncoding];
	TTDINFO(@"completedOnTargetView data: %@", text);
    
    TT_RELEASE_SAFELY(text);
}

- (BOOL)targetView:(UIView *)targetView acceptsDropForType:(NSString *)type {
    TTDINFO("acceptsDropForType", type);
	return YES;
}


- (void)dealloc {
    TT_RELEASE_SAFELY(_mapView);
    TT_RELEASE_SAFELY(_pinLabel);
    TT_RELEASE_SAFELY(_pinView);

    TT_RELEASE_SAFELY(_button);
	[super dealloc];
}


@end

