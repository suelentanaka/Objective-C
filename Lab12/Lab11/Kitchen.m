//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"

@implementation Kitchen

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings
{
    Pizza *pizza = [[Pizza alloc] initWithSize:size andToppings:toppings];
    if (self.delegate == nil) {
        return [[Pizza alloc] initWithSize:size andToppings:toppings];
    }
    if ([self.delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings]) {
        [self.delegate kitchenShouldUpgradeOrder:self];
        if ([self.delegate respondsToSelector:@selector(kitchenDidMakePizza:)]) {
            [self.delegate kitchenDidMakePizza:pizza];
        }
        return [[Pizza alloc]initWithSize:size andToppings:toppings];
    } else {
        NSLog(@"Sorry, we were unable to make your pizza.");
    }
    return 0;
}

@end
