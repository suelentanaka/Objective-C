//
//  Kitchen.h
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

@class Kitchen;

#import <Foundation/Foundation.h>
#import "Pizza.h"

@protocol KitchenDelegate <NSObject>

- (BOOL)kitchen: (Kitchen *) kitchen shouldMakePizzaOfSize:(PizzaSize) size andToppings:(NSArray *) toppings;
- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;

@end

@interface Kitchen : NSObject

@property (nonatomic, weak) id<KitchenDelegate> delegate;
- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings;
//- (void)kitchenDidMakePizza: (Pizza *) pizza;

@end
