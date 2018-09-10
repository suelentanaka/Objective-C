//
//  Contact.h
//  Lab4
//
//  Created by Suelen Tanaka on 2018-09-07.
//  Copyright © 2018 Suelen Tanaka. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *email;
@property (nonatomic, strong) NSString *phones;

- (instancetype)initWithName: (NSString *) name andEmail: (NSString *) email andPhone: (NSString *) phones;

@end
