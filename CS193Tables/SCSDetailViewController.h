//
//  SCSDetailViewController.h
//  CS193Tables
//
//  Created by Richard E Millet on 2/28/13.
//  Copyright (c) 2013 Richard Millet. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SCSDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
