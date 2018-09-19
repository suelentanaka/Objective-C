//
//  DeliveryService.m
//  Lab11
//
//  Created by Suelen Tanaka on 2018-09-19.
//  Copyright © 2018 Suelen Tanaka. All rights reserved.
//

#import "DeliveryService.h"
#import "Pizza.h"

@implementation DeliveryService

static DeliveryService *car;

- (instancetype)init
{
    self = [super init];
    if (self) {
        _cars = [DeliveryCar new];
        _pizzaOrders = [NSMutableArray array];
    }
    return self;
}

- (void) deliverPizza:(Pizza *)pizza {
    [self.pizzaOrders addObject:pizza];
    [self.cars deliverPizza:pizza];
    [self description];
    
}

+ (instancetype)sharedObject {
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        car = [[self alloc] init];
        car.pizzaOrders = [NSMutableArray array];
        car.cars = [DeliveryCar new];
        
    });
    return car;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"Number of pizzas delivered: %lu", (unsigned long)[_pizzaOrders count]];
}

@end
