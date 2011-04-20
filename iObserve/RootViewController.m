

#import "RootViewController.h"
#import "TransparentToolbar.h"

@implementation RootViewController

@synthesize label = _label;
@synthesize button = _button;

int clicked = 0;

///////////////////////////////////////////////////////////////////////////////////////////////////
-(id)initWithNibName:(NSString *)nibName bundle:(NSBundle *)bundle {
  if ((self = [super initWithNibName:nibName bundle:bundle])) {
    self.title = @"Three20 NIB Demo";
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

- (IBOutlet) buttonClicked:(id) sender {
    ++clicked;
    
    _label.text = [[NSNumber numberWithInt:clicked] stringValue];
    
}
-(void)makeLeftButtonBarItems {
    
    // create a toolbar where we can place some buttons
    TransparentToolbar* toolbar = [[TransparentToolbar alloc]
                          initWithFrame:CGRectMake(0, 0, 200, 45)];

    
    // create an array for the buttons
    NSMutableArray* buttons = [[NSMutableArray alloc] initWithCapacity:2];
    

    UIBarButtonItem *newReportButton = [[UIBarButtonItem alloc] initWithTitle:@"New Report" style: UIBarButtonItemStyleBordered target:self action:@selector(increaseFont)] ;
    
    
    [buttons addObject:newReportButton];
    [newReportButton release];
    
    // create a spacer between the buttons
    UIBarButtonItem *spacer = [[UIBarButtonItem alloc]
                               initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace
                               target:nil
                               action:nil];
    [buttons addObject:spacer];
    [spacer release];
    
    // create a standard delete button with the trash icon
   UIBarButtonItem *addPersonButton = [[UIBarButtonItem alloc] initWithTitle:@"Add Person" style: UIBarButtonItemStyleBordered target:self action:@selector(increaseFont)];
    

    [buttons addObject:addPersonButton];
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
                                   initWithFrame:CGRectMake(0, 0, 200, 45)];
    
    
    // create an array for the buttons
    NSMutableArray* buttons = [[NSMutableArray alloc] initWithCapacity:2];
    
    
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
    
    // put the buttons in the toolbar and release them
    [toolbar setItems:buttons animated:NO];
    [buttons release];
    
    // place the toolbar into the navigation bar
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]
                                             initWithCustomView:toolbar];
    [toolbar release];
    
}

- (void) loadView
{
    [super loadView];
    
    // load automatically the NIB
    [[NSBundle mainBundle] loadNibNamed: NSStringFromClass([self class]) owner: self options: nil];
}
/*
- (void)loadView {
    self.view = [[[UIView alloc] init] autorelease];
    self.view.backgroundColor = [UIColor whiteColor];
    
    TTImageView* imageView = [[[TTImageView alloc] initWithFrame:CGRectMake(30, 30, 0, 0)]
                              autorelease];
    imageView.autoresizesToImage = YES;
    imageView.urlPath = @"http://farm4.static.flickr.com/3163/3110335722_7a906f9d8b_m.jpg";
    [self.view addSubview:imageView];
}
 */

- (void)dealloc {
	[super dealloc];
}


@end

