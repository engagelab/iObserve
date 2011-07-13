//
//  ReportDetailCellView.h
//  iObserve-sb
//
//  Created by Anthony Perritano on 7/6/11.
//  Copyright 2011 .t. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ReportDetailTextCellView : UITableViewCell {
    UIImageView *cellIcon;
    UILabel *numberLabel;
    UILabel *timeLabel;
    UILabel *personLabel;
    UILabel *activityLabel;
}

@property (nonatomic, retain) IBOutlet UIImageView *cellIcon;
@property (nonatomic, retain) IBOutlet UILabel *numberLabel;
@property (nonatomic, retain) IBOutlet UILabel *timeLabel;
@property (nonatomic, retain) IBOutlet UILabel *personLabel;
@property (nonatomic, retain) IBOutlet UILabel *activityLabel;

@end


