//
//  StripePaymentService.m
//  Lab10
//
//  Created by Suelen Tanaka on 2018-09-17.
//  Copyright © 2018 Suelen Tanaka. All rights reserved.
//

#import "StripePaymentService.h"

@implementation StripePaymentService

- (void) processPaymentAmount:(NSInteger)amount {
    NSLog(@"Processed by Stripe: %ld", amount + 20);
}

- (BOOL) canProcessPayment {
    if (arc4random_uniform(2) == 0) {
        return NO;
    } else {
        return YES;
    }
}

@end
