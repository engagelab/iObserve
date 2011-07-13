//
//  ReportDetailViewController.h
//  iObserve-sb
//
//  Created by Anthony Perritano on 7/6/11.
//  Copyright 2011 .t. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Report.h"
#import "ReportEntry.h"

@interface ReportDetailsViewController : UITableViewController {
    
    Report *report;
    NSArray *reportEntriesSorted;
}

@property (nonatomic, retain) Report *report;
@property (nonatomic, retain) NSArray *reportEntriesSorted;

@end
