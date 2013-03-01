//
//  SCSLecture.m
//  CS193Tables
//
//  Created by Richard E Millet on 2/28/13.
//  Copyright (c) 2013 Richard Millet. All rights reserved.
//

#import "SCSLecture.h"

@implementation SCSLecture

- (id)initWithNumber:(NSInteger)lectureNumber
			   title:(NSString *)lectureTitle
				 URL:(NSURL *)lectureURL {
	self = [super init];
	
	if (self != nil) {
		_lectureNumber = lectureNumber;
		_lectureTitle = lectureTitle;
		_lectureURL = lectureURL;
	}
	
	return self;
}

- (id)init {
	return [self initWithNumber:0 title:nil URL:nil];
}

@end
