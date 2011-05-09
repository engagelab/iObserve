
#import "DKDragDropServer.h"

@interface RootViewController : TTViewController <DKDragDataProvider, DKDragDelegate> {

    UIButton *_button;
    TTView *_pinView;
    UILabel *_pinLabel;
    UIImageView *_mapView;
}
@property (nonatomic, retain) IBOutlet UIButton *button;

@property (nonatomic, retain) IBOutlet TTView *pinView;
@property (nonatomic, retain) IBOutlet UILabel *pinLabel;
@property (nonatomic, retain) IBOutlet UIImageView *mapView;

-(void)makeLeftButtonBarItems;
-(void)makeRightButtonBarItems;

- (IBAction) buttonClicked:(UIButton*) sender;
- (IBAction) createNewPersonPin:(UIButton*) sender;

@end
