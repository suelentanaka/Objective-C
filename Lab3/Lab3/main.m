//
//  main.m
//  Lab3
//
//  Created by Suelen Tanaka on 2018-09-06.
//  Copyright © 2018 Suelen Tanaka. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"


int main(int argc, const char *argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        while (gameOn) {
//            AdditionQuestion *q = [[AdditionQuestion alloc] init]; the same as below
            AdditionQuestion *q = [AdditionQuestion new];
            NSString *userAnswer = [InputHandler getUserInputWithLength:10 withPrompt: [q question]];
            NSInteger userAnsInt = [userAnswer integerValue];;
            if ([q answer] == userAnsInt) {
                NSLog(@"Right!");
            } else if ([userAnswer isEqualToString:@"quit"]) {
                gameOn = NO;
            } else {
                NSLog(@"Wrong!");
            }
        }
    }
    return 0;
}
