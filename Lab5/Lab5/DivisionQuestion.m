//
//  DivisionQuestion.m
//  Lab5
//
//  Created by Suelen Tanaka on 2018-09-10.
//  Copyright © 2018 Suelen Tanaka. All rights reserved.
//

#import "DivisionQuestion.h"

@implementation DivisionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

- (void)generateQuestion {
    //make question string
    super.question = [NSString stringWithFormat:@"%ld / %ld = ", (long)super.leftValue, (long)super.rightValue];
    
    // get the answer and assign to answer
    super.answer = super.leftValue / super.rightValue;
}

@end
