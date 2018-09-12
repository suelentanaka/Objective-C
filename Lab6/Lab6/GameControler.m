//
//  GameControler.m
//  Lab6
//
//  Created by Suelen Tanaka on 2018-09-11.
//  Copyright © 2018 Suelen Tanaka. All rights reserved.
//

#import "GameControler.h"
#define MAX_ROLL 5

@interface GameControler()
{
    //private property
    @private int rollCount;
    @private int score;
}
@end

@implementation GameControler

Dice *die = nil;

- (instancetype)init
{
    self = [super init];
    if (self) {
        //to create a NSMutableArray, the last object has to be always nil
        _displayDice = [NSMutableArray arrayWithObjects:[Dice dice], [Dice dice], [Dice dice], [Dice dice], [Dice dice], nil];
        rollCount = MAX_ROLL;
    }
    return self;
}

- (void) roll {
    //if I have more than 1 roll count left, I can roll all 5 dice in the array.
    //except for the ones that are held by user.
    if (rollCount > 0) {
        for (die in _displayDice) {
            if (![die held]) {
                [die roll];
            }
        }
        rollCount--;
        if (rollCount == 0) {
            [self holdAll];
            NSLog(@"☠︎☠︎☠︎☠︎☠︎☠︎ GAME OVER ☠︎☠︎☠︎☠︎☠︎☠︎");
        }
        NSLog(@"    Remaining Rolls: %d", rollCount);
    } else {
        NSLog(@"You can't roll more than %d times.", MAX_ROLL);
    }
}

- (void) displayCurrentDeck {
    NSMutableString *currentDeck = [NSMutableString string];
    for (die in _displayDice) {
        [currentDeck appendFormat:@" %@ ", [die description]];
    }
    NSLog(@"⎓⎓⎓⎓⎓⎓⎓⎓⎓⎓⎓⎓⎓⎓⎓⎓⎓");
    NSLog(@"--    Current Dice     --");
    NSLog(@"%@\n", currentDeck);
    NSLog(@"\n");
}

- (void) holdDie: (NSUInteger) die {
    //check if the die is already held
    Dice *heldDie = (Dice*)[_displayDice objectAtIndex:die];
    if (heldDie.held == YES) {
        //unhold if already held
        heldDie.held = NO;
    } else {
    heldDie.held = YES;
    }
}

- (void) resetDice {
    // iterate through each die, unhold every die
    for (die in _displayDice) {
        die.held = NO;
    }
}

- (void) holdAll {
    // iterate through each die, hold every die
    for (die in _displayDice) {
        die.held = YES;
    }
}

- (void) displayScore {
//  if the game is not over, print the currentDeck and the score (the sum of faceValues)
        for(die in _displayDice){
            score += [die faceValue];
        }
    NSLog(@"--     Total Score     --");
    NSLog(@"            %d", score);
    NSLog(@"⎓⎓⎓⎓⎓⎓⎓⎓⎓⎓⎓⎓⎓⎓⎓⎓⎓");
    score = 0;
}

@end
    
