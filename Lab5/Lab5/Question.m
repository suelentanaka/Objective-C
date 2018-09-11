//
//  Question.m
//  Lab5
//
//  Created by Suelen Tanaka on 2018-09-10.
//  Copyright © 2018 Suelen Tanaka. All rights reserved.
//

#import "Question.h"

@implementation Question

//constructor
- (instancetype)init
{
    self = [super init];
    if (self) {
        //generate 2 random ints using arc4random_uniform
        _leftValue = arc4random_uniform(90) + 10;
        _rightValue = arc4random_uniform(90) + 10;
        
        
        _startTime = [NSDate date];
        
    }
    return self;
}

//Override
- (NSInteger)answer {
    _endTime = [NSDate date];
    return _answer;
}

//method to get the interval
- (NSTimeInterval) answerTime {
    return [_endTime timeIntervalSinceDate:_startTime];
}

//template that will be overriden by the subclasses
-(void) generateQuestion{
    
}


@end
