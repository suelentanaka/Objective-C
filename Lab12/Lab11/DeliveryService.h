//
//  DeliveryService.h
//  Lab11
//
//  Created by Suelen Tanaka on 2018-09-19.
//  Copyright © 2018 Suelen Tanaka. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DeliveryCar.h"
@class Pizza;

@interface DeliveryService : NSObject

@property (nonatomic, strong) DeliveryCar *cars;
@property (nonatomic, strong) NSMutableArray *pizzaOrders;

- (void) deliverPizza:(Pizza *)pizza;

@end
