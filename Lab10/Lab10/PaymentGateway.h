//
//  PaymentGateway.h
//  Lab10
//
//  Created by Suelen Tanaka on 2018-09-14.
//  Copyright © 2018 Suelen Tanaka. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PaymentDelegate <NSObject>

- (void) processPaymentAmount:(NSInteger)amount;
- (BOOL) canProcessPayment;

@end

@interface PaymentGateway : NSObject

- (void) processPaymentAmount:(NSInteger)amount;
@property (nonatomic, weak) id<PaymentDelegate> paymentDelegate;

@end
