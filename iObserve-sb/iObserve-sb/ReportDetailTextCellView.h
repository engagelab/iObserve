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
    UILabel *timeLabel;
    UILabel *personLabel;
    UILabel *actionLabel;
}

@property (nonatomic, retain) IBOutlet UIImageView *cellIcon;
@property (nonatomic, retain) IBOutlet UILabel *timeLabel;
@property (nonatomic, retain) IBOutlet UILabel *personLabel;
@property (nonatomic, retain) IBOutlet UILabel *actionLabel;

@end


