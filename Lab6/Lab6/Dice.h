//
//  Dice.h
//  Lab6
//
//  Created by Suelen Tanaka on 2018-09-11.
//  Copyright © 2018 Suelen Tanaka. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

//NSUInteger -> always positive int
@property (nonatomic, assign) NSUInteger faceValue;
@property (nonatomic, assign) Boolean held;

+ (instancetype) dice;

//instance method that sets the face value
- (void) roll;

@end
