//
//  SCSLectureViewController.h
//  CS193Tables
//
//  Created by Richard E Millet on 3/4/13.
//  Copyright (c) 2013 Richard Millet. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SCSLecture.h"

@interface SCSLectureViewController : UITableViewController

@property (strong, nonatomic) SCSLecture *lecture;

@end
