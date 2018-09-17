//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Suelen Tanaka on 2018-09-13.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
//type
typedef enum {
    small,
    medium,
    large
} PizzaSize;

@interface Pizza : NSObject

@property (nonatomic, assign) PizzaSize size;
@property (nonatomic, strong) NSArray *toppings;

- (instancetype)initWithSize: (PizzaSize) size andToppings: (NSArray *) toppings;
+ (Pizza *) largePepperoni;
+ (Pizza *) meatLoversWithSize: (PizzaSize) size;

@end
