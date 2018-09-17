//
//  main.m
//  Lab10
//
//  Created by Suelen Tanaka on 2018-09-14.
//  Copyright © 2018 Suelen Tanaka. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "PaymentGateway.h"
#import "AmazonPaymentService.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "ApplePaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int randomValue = arc4random_uniform(900) + 100;
        NSString *prompt = [NSString stringWithFormat: @"\nThank you for shopping at Acme.com\nYour total today is $%ld.\nPlease select your payment method:\n1: Amazon | 2: Paypal | 3: Stripe | 4: Apple",  (long)randomValue];
        NSInteger userOption = [[InputHandler getUserInputWithLength:10 withPrompt: prompt] integerValue];

        NSLog(@"Input: %ld", (long)userOption);
        
        PaymentGateway *gateway = [PaymentGateway new];
        AmazonPaymentService *amazon = [AmazonPaymentService new];
        PaypalPaymentService *paypal = [PaypalPaymentService new];
        StripePaymentService *stripe = [StripePaymentService new];
        ApplePaymentService *apple = [ApplePaymentService new];
        
        switch (userOption) {
            case 1:
                gateway.paymentDelegate = amazon;
                [amazon processPaymentAmount:randomValue];
                break;
            case 2:
                gateway.paymentDelegate = paypal;
                [paypal processPaymentAmount:randomValue];
                break;
            case 3:
                gateway.paymentDelegate = stripe;
                [stripe processPaymentAmount:randomValue];
                break;
            case 4:
                gateway.paymentDelegate = apple;
                [apple processPaymentAmount:randomValue];
                break;
            default:
                break;
        }
        
    }
    return 0;
}
