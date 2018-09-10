//
//  ScoreKeeper.h
//  Lab3
//
//  Created by Suelen Tanaka on 2018-09-06.
//  Copyright © 2018 Suelen Tanaka. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property (nonatomic, assign) NSInteger rightAnswer;
@property (nonatomic, assign) NSInteger wrongAnswer;

+ (NSString *) scoreWithRightCount: (NSInteger) rightCount withWrongCount: (NSInteger) wrongCount;

@end
