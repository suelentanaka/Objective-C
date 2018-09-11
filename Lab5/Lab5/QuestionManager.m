//
//  QuestionManager.m
//  Lab5
//
//  Created by Suelen Tanaka on 2018-09-10.
//  Copyright © 2018 Suelen Tanaka. All rights reserved.
//

#import "QuestionManager.h"

// has an array that keeps track of all the questions and also the total and average time
@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [NSMutableArray array];
    }
    return self;
}

- (NSString *) timeOutput {
    //first question of Addition type
    Question *first = [_questions objectAtIndex:0];
    //last question
    Question *last = [_questions objectAtIndex:[_questions count]-1];
    
    NSTimeInterval timeIterval = [[last endTime] timeIntervalSinceDate:[first startTime]];
    // rounding of timeinterval to seconds
    long second = lroundf(timeIterval);
    return [NSString stringWithFormat:@"total time: %lus, average time: %lus", second, second / [_questions count]];
}

@end
