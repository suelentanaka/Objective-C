//
//  GameControler.h
//  Lab6
//
//  Created by Suelen Tanaka on 2018-09-11.
//  Copyright © 2018 Suelen Tanaka. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

@interface GameControler : NSObject

@property (nonatomic, strong) NSMutableArray *displayDice;
- (void) displayCurrentDeck;
- (void) roll;
- (void) displayScore;
- (void) holdDie: (NSUInteger) die;
- (void) resetDice;
- (void) holdAll;

@end
