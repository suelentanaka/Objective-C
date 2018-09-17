//
//  PaymentGateway.m
//  Lab10
//
//  Created by Suelen Tanaka on 2018-09-14.
//  Copyright © 2018 Suelen Tanaka. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

- (void) processPaymentAmount:(NSInteger)amount {
    if ([self.paymentDelegate canProcessPayment]) {
        [self.paymentDelegate processPaymentAmount:amount];
    } else {
        NSLog(@"Sorry, we were unable to process your payment.");
    }
}



@end
