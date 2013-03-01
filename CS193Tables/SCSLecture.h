//
//  SCSLecture.h
//  CS193Tables
//
//  Created by Richard E Millet on 2/28/13.
//  Copyright (c) 2013 Richard Millet. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SCSLecture : NSObject

@property (nonatomic) NSInteger lectureNumber;
@property (copy, nonatomic) NSString *lectureTitle;
@property (strong, nonatomic) NSURL *lectureURL;

- (id)initWithNumber:(NSInteger)lectureNumber
			   title:(NSString *)lectureTitle
				 URL:(NSString *)lectureURL;

@end
