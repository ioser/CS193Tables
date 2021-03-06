//
//  SCSLectureList.h
//  CS193Tables
//
//  Created by Richard E Millet on 2/28/13.
//  Copyright (c) 2013 Richard Millet. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SCSLecture.h"

@interface SCSLectureList : NSObject

- (NSInteger)count;
- (SCSLecture *)objectAtIndexedSubscript:(NSInteger)lectureNumber;
@end
