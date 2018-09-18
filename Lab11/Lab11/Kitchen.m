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
    if ([self.delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings]) {
        [self.delegate kitchenShouldUpgradeOrder:self];
        return [[Pizza alloc]initWithSize:size andToppings:toppings];
    } else {
        NSLog(@"Sorry, we were unable to make you pizza.");
    }
    return 0;
}

@end
