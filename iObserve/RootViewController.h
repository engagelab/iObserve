
@interface RootViewController : TTViewController {
    UILabel *_label;
    UIButton *_button;
}
@property (nonatomic, retain) IBOutlet UIButton *button;

@property (nonatomic, retain) IBOutlet UILabel *label;


-(void)makeLeftButtonBarItems;
-(void)makeRightButtonBarItems;

- (IBAction) buttonClicked:(UIButton*) sender;

@end
