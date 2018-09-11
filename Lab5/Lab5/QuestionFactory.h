//
//  QuestionFactory.h
//  Lab5
//
//  Created by Suelen Tanaka on 2018-09-10.
//  Copyright © 2018 Suelen Tanaka. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionFactory : NSObject

@property (nonatomic, strong) NSArray *questionTypes;
- (Question *) generateRandomQuestion;

@end
