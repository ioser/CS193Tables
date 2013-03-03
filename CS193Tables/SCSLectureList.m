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

- (NSInteger)count {
	return [self.privateListOfLectures count];
}

- (SCSLecture *)objectAtIndexedSubscript:(NSInteger)lectureNumber {
	return self.privateListOfLectures[lectureNumber];
}

// Custom getter
- (NSArray *)privateListOfLectures {
	if (_privateListOfLectures == nil) {
		_privateListOfLectures = @[
							 [[SCSLecture alloc] initWithNumber:1
														  title:@"MVC Intro to Objective-C"
															URL:[NSURL URLWithString:@"http://www.stanford.edu/class/cs193p/cgi-bin/drupal/system/files/lectures/Lecture%201_1.pdf"]],
		[[SCSLecture alloc] initWithNumber:2
									 title:@"MVC Intro to Objective-C"
									   URL:[NSURL URLWithString:@"http://www.stanford.edu/class/cs193p/cgi-bin/drupal/system/files/lectures/Lecture%203_2.pdf"]],
		[[SCSLecture alloc] initWithNumber:3
									 title:@"MVC Intro to Objective-C"
									   URL:[NSURL URLWithString:@"http://www.stanford.edu/class/cs193p/cgi-bin/drupal/system/files/lectures/Lecture%204_1.pdf"]],
		[[SCSLecture alloc] initWithNumber:4
									 title:@"MVC Intro to Objective-C"
									   URL:[NSURL URLWithString:@"http://www.stanford.edu/class/cs193p/cgi-bin/drupal/system/files/lectures/Lecture%205_1.pdf"]],
		[[SCSLecture alloc] initWithNumber:5
									 title:@"MVC Intro to Objective-C"
									   URL:[NSURL URLWithString:@"http://www.stanford.edu/class/cs193p/cgi-bin/drupal/system/files/lectures/Lecture%206_1.pdf"]],
		[[SCSLecture alloc] initWithNumber:6
									 title:@"MVC Intro to Objective-C"
									   URL:[NSURL URLWithString:@"http://www.stanford.edu/class/cs193p/cgi-bin/drupal/system/files/lectures/Lecture%207_1.pdf"]],
		[[SCSLecture alloc] initWithNumber:7
									 title:@"MVC Intro to Objective-C"
									   URL:[NSURL URLWithString:@"http://www.stanford.edu/class/cs193p/cgi-bin/drupal/system/files/lectures/Lecture%201_1.pdf"]],
		[[SCSLecture alloc] initWithNumber:8
									 title:@"MVC Intro to Objective-C"
									   URL:[NSURL URLWithString:@"http://www.stanford.edu/class/cs193p/cgi-bin/drupal/system/files/lectures/Lecture%203_2.pdf"]],
		[[SCSLecture alloc] initWithNumber:9
									 title:@"Table Views"
									   URL:[NSURL URLWithString:@"http://www.stanford.edu/class/cs193p/cgi-bin/drupal/system/files/lectures/Lecture%204_1.pdf"]],
		[[SCSLecture alloc] initWithNumber:10
									 title:@"MVC Intro to Objective-C"
									   URL:[NSURL URLWithString:@"http://www.stanford.edu/class/cs193p/cgi-bin/drupal/system/files/lectures/Lecture%205_1.pdf"]],
		[[SCSLecture alloc] initWithNumber:11
									 title:@"MVC Intro to Objective-C"
									   URL:[NSURL URLWithString:@"http://www.stanford.edu/class/cs193p/cgi-bin/drupal/system/files/lectures/Lecture%206_1.pdf"]],
		[[SCSLecture alloc] initWithNumber:12
									 title:@"MVC Intro to Objective-C"
									   URL:[NSURL URLWithString:@"http://www.stanford.edu/class/cs193p/cgi-bin/drupal/system/files/lectures/Lecture%207_1.pdf"]],
		[[SCSLecture alloc] initWithNumber:13
									 title:@"MVC Intro to Objective-C"
									   URL:[NSURL URLWithString:@"http://www.stanford.edu/class/cs193p/cgi-bin/drupal/system/files/lectures/Lecture%201_1.pdf"]],
		[[SCSLecture alloc] initWithNumber:14
									 title:@"MVC Intro to Objective-C"
									   URL:[NSURL URLWithString:@"http://www.stanford.edu/class/cs193p/cgi-bin/drupal/system/files/lectures/Lecture%203_2.pdf"]],
		[[SCSLecture alloc] initWithNumber:15
									 title:@"MVC Intro to Objective-C"
									   URL:[NSURL URLWithString:@"http://www.stanford.edu/class/cs193p/cgi-bin/drupal/system/files/lectures/Lecture%204_1.pdf"]],
		[[SCSLecture alloc] initWithNumber:16
									 title:@"MVC Intro to Objective-C"
									   URL:[NSURL URLWithString:@"http://www.stanford.edu/class/cs193p/cgi-bin/drupal/system/files/lectures/Lecture%205_1.pdf"]],
		[[SCSLecture alloc] initWithNumber:17
									 title:@"MVC Intro to Objective-C"
									   URL:[NSURL URLWithString:@"http://www.stanford.edu/class/cs193p/cgi-bin/drupal/system/files/lectures/Lecture%206_1.pdf"]],
		[[SCSLecture alloc] initWithNumber:18
									 title:@"MVC Intro to Objective-C"
									   URL:[NSURL URLWithString:@"http://www.stanford.edu/class/cs193p/cgi-bin/drupal/system/files/lectures/Lecture%207_1.pdf"]]];
	}
	return _privateListOfLectures;
}
@end
