//
//  QuestionFactory.m
//  Lab5
//
//  Created by Suelen Tanaka on 2018-09-10.
//  Copyright © 2018 Suelen Tanaka. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questionTypes = @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplicationQuestion", @"DivisionQuestion"];
    }
    return self;
}

- (Question *) generateRandomQuestion {
    //return as instance of +, -, *, / Question object.
    NSString *type = [_questionTypes objectAtIndex:arc4random_uniform(4)];
    
    //create and AdditionQuestion > [AdditionQuestion new]
    //create random question (+, -, *, /) > put it an array, pick from it and generate instance
    return [[NSClassFromString(type) alloc] init];
    
}

@end
