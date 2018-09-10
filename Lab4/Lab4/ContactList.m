//
//  ContactList.m
//  Lab4
//
//  Created by Suelen Tanaka on 2018-09-07.
//  Copyright © 2018 Suelen Tanaka. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList

- (instancetype)init
{
    self = [super init];
    if (self) {
        _contactList = [NSMutableArray new];
    }
    return self;
}

-(void) addContact: (Contact *) newContact {
    [_contactList addObject:newContact];
}

- (NSString *)description
{
    NSMutableString *result = [[NSMutableString alloc] initWithString:@"\n"];
    int count = 0;
    for (Contact *contact in _contactList) {
        NSString *contactStr = [NSString stringWithFormat:@"%d: %@\n", count, contact];
        count++;
        [result appendString:contactStr];
    }
    return result;
}


//BONUS 1 - SHOW
- (NSString *) show: (int) indx {
    if (indx > [self.contactList count] || indx < 0) {
        return @"Not found!";
    }
    Contact *contact = [self.contactList objectAtIndex:indx];
    NSString *details = [NSString stringWithFormat:@"\nName: %@\nEmail: %@\nPhone: %@",contact.name, contact.email, contact.phones];
    return details;
}


//BONUS 2 - FIND
- (int) find: (NSString *)substr {
    int indx = 0;
    if ([self.contactList count] == 0) {
        return -1;
    }
    for (Contact *contact in self.contactList) {
        if ([contact.name containsString:substr]) {
            return indx;
        }
        if ([contact.email containsString:substr]) {
            return indx;
        }
        indx++;
    }
    return -1;
}


//BONUS 3 - NO DUPLICATES
- (BOOL) noDuplicates: (NSString *) email {
    if ([self.contactList count] == 0) {
        return false;
    }
    for (Contact *contact in self.contactList) {
        if ([contact.email isEqualToString:email]) {
            return true;
        }
    }
    return false;
}

@end
