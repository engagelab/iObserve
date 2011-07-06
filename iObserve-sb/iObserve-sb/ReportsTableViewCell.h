//
//  ReportTableViewCell.h
//  iObserve-sb
//
//  Created by Anthony Perritano on 7/5/11.
//  Copyright 2011 .t. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ReportsTableViewCell : UITableViewCell {
    UILabel *cellNumberLabel;
    UILabel *dataPointNumberLabel;
    UILabel *timestampLabel;
}
@property (nonatomic, retain) IBOutlet UILabel *cellNumberLabel;
@property (nonatomic, retain) IBOutlet UILabel *dataPointNumberLabel;
@property (nonatomic, retain) IBOutlet UILabel *timestampLabel;
@end
