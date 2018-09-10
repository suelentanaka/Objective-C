//
//  ScoreKeeper.m
//  Lab3
//
//  Created by Suelen Tanaka on 2018-09-06.
//  Copyright © 2018 Suelen Tanaka. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (instancetype)initWithRightAnswer: (int) rightAnswer andWrongAnswer: (int) wrongAnswer;
{
    self = [super init];
    if (self) {
        _rightAnswer = rightAnswer;
        _wrongAnswer = wrongAnswer;
    }
    return self;
}

+ (NSString *) scoreWithRightCount: (NSInteger) rightCount withWrongCount: (NSInteger) wrongCount {
    long rate = rightCount * 100 / (rightCount + wrongCount);
    return [NSString stringWithFormat:@"Score: %ld right, %ld wrong ---- %ld%%", (long) rightCount, (long) wrongCount, rate];
}
@end
