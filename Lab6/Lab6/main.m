//
//  main.m
//  Lab6
//
//  Created by Suelen Tanaka on 2018-09-11.
//  Copyright © 2018 Suelen Tanaka. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "GameControler.h"
#import "InputHandler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        GameControler *player1 = [GameControler new];
        
        while (true) {
            NSString *input = [InputHandler getUserInputWithLength:10 withPrompt:@"\n'roll' to roll the dice.\n'hold' to hold a dice.\n'reset' to un-hold all dice.\n'display' to show current state.\n'quit' to exit the game."];
            //roll, hold, reset, display, quit
            
            if ([input isEqualToString:@"roll"]) {
                [player1 roll];
                [player1 displayCurrentDeck];
                [player1 displayScore];
            } else if ([input isEqualToString:@"display"]) {
                [player1 displayCurrentDeck];
                [player1 displayScore];
            } else if ([input isEqualToString:@"hold"]) {
                NSString *input = [InputHandler getUserInputWithLength:10 withPrompt:@"\nEnter the die index: "];
                [player1 holdDie:[input integerValue]];
                [player1 displayCurrentDeck];
                [player1 displayScore];
            } else if ([input isEqualToString:@"reset"]) {
                [player1 resetDice];
                [player1 displayCurrentDeck];
                [player1 displayScore];
            } else if ([input isEqualToString:@"quit"]) {
                break;
            }
        }
    }
    return 0;
}
