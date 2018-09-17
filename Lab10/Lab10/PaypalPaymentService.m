//
//  PaypalPaymentService.m
//  Lab10
//
//  Created by Suelen Tanaka on 2018-09-17.
//  Copyright © 2018 Suelen Tanaka. All rights reserved.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService

- (void) processPaymentAmount:(NSInteger)amount {
    NSLog(@"Processed by Paypal: %ld", amount + 15);
}

- (BOOL) canProcessPayment {
    if (arc4random_uniform(2) == 0) {
        return NO;
    } else {
        return YES;
    }
}

@end
