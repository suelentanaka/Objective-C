//
//  Dice.m
//  Lab6
//
//  Created by Suelen Tanaka on 2018-09-11.
//  Copyright © 2018 Suelen Tanaka. All rights reserved.
//

#import "Dice.h"

@implementation Dice

- (instancetype)init
{
    self = [super init];
    if (self) {
        //will give 1-5 (+1) -> 1-6
        _faceValue = arc4random_uniform(6) + 1;
        _held = false;
    }
    return self;
}

+ (instancetype) dice {
    return [[self alloc] init];
}

- (void) roll {
    _faceValue = arc4random_uniform(6) + 1;
}

- (NSString *)description
{
    switch (_faceValue) {
        case 1:
            if (_held) {
                return @"[⚀]";
            }
            return @"⚀";
        case 2:
            if (_held) {
                return @"[⚁]";
            }
            return @"⚁";
        case 3:
            if (_held) {
                return @"[⚂]";
            }
            return @"⚂";
        case 4:
            if (_held) {
                return @"[⚃]";
            }
            return @"⚃";
        case 5:
            if (_held) {
                return @"[⚄]";
            }
            return @"⚄";
        case 6:
            if (_held) {
                return @"[⚅]";
            }
            return @"⚅";

        default:
            return @"Invalid Die";
    };
}

@end
