//
//  SCSLectureInfoCell.h
//  CS193Tables
//
//  Created by Richard E Millet on 3/2/13.
//  Copyright (c) 2013 Richard Millet. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SCSLectureInfoCell : UITableViewCell

@property (weak, nonatomic)IBOutlet UILabel *lectureNumberLabel;
@property (weak, nonatomic)IBOutlet	UILabel *lectureTitleLabel;

@end
