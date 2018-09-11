//
//  main.m
//  Lab5
//
//  Created by Suelen Tanaka on 2018-09-10.
//  Copyright © 2018 Suelen Tanaka. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionFactory.h"
#import "QuestionManager.h"


int main(int argc, const char *argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        
        ScoreKeeper *score = [ScoreKeeper new];
        NSInteger rightAnswers = [score rightAnswer];                           
        NSInteger wrongAnswers = [score wrongAnswer];
        QuestionManager *questionManager = [QuestionManager new];
        QuestionFactory *questionFactory = [QuestionFactory new];
        
        while (gameOn) {
            Question *q = [questionFactory generateRandomQuestion];
            [[questionManager questions]addObject:q];
            
            NSString *userAnswer = [InputHandler getUserInputWithLength:10 withPrompt: [q question]];
            NSInteger userAnsInt = [userAnswer integerValue];;
            if ([q answer] == userAnsInt) {
                NSLog(@"Right!");
                rightAnswers++;
                NSLog(@"%@", [ScoreKeeper scoreWithRightCount: rightAnswers withWrongCount: wrongAnswers]);
            } else if ([userAnswer isEqualToString:@"quit"]) {
                gameOn = NO;
            } else {
                NSLog(@"Wrong!");
                wrongAnswers++;
                NSLog(@"%@", [ScoreKeeper scoreWithRightCount: rightAnswers withWrongCount: wrongAnswers]);
            }
            NSLog(@"%@", [questionManager timeOutput]);
        }
    }
    return 0;
}
