//
//  SCSLectureList.m
//  CS193Tables
//
//  Created by Richard E Millet on 2/28/13.
//  Copyright (c) 2013 Richard Millet. All rights reserved.
//

#import "SCSLectureList.h"
#import "SCSLecture.h"

@interface SCSLectureList()
@property (copy, nonatomic) NSArray *privateListOfLectures;
@end

@implementation SCSLectureList

// Custom getter
- (NSArray *)privateListOfLectures {
	if (_privateListOfLectures == nil) {
		_privateListOfLectures = @[[[SCSLecture alloc] initWithNumber:1 title:@"MVC Intro to Objective-C" URL:<#(NSString *)#>]
	}
}
@end
