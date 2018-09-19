//
//  CheeryManager.h
//  Lab11
//
//  Created by Suelen Tanaka on 2018-09-17.
//  Copyright © 2018 Suelen Tanaka. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
@class DeliveryService;

@interface CheeryManager : NSObject <KitchenDelegate>

@property (nonatomic, strong) DeliveryService *deliveryService;

- (instancetype)initWithDeliveryService: (DeliveryService *) deliveryService;

@end
