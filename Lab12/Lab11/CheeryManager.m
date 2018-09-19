//
//  CheeryManager.m
//  Lab11
//
//  Created by Suelen Tanaka on 2018-09-17.
//  Copyright © 2018 Suelen Tanaka. All rights reserved.
//

#import "CheeryManager.h"
#import "DeliveryService.h"

@implementation CheeryManager

- (instancetype)initWithDeliveryService: (DeliveryService *) deliveryService
{
    self = [super init];
    if (self) {
        _deliveryService = deliveryService;
    }
    return self;
}

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings{
    size = large;
    return YES;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen{
    return YES;
}

- (void)kitchenDidMakePizza:(Pizza *)pizza {
    NSLog(@"Enjoy your pizza!");
    [self.deliveryService deliverPizza:pizza];
}

@end
