//
//  Contact.m
//  Lab4
//
//  Created by Suelen Tanaka on 2018-09-07.
//  Copyright © 2018 Suelen Tanaka. All rights reserved.
//

#import "Contact.h"

@implementation Contact
- (instancetype)initWithName: (NSString *) name andEmail: (NSString *) email andPhone: (NSString *) phones
{
    self = [super init];
    if (self) {
        _name = name;
        _email = email;
        _phones = phones;
    }
    return self;
}

//description == toString
- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@> (%@)", self.name, self.email];
}

@end
