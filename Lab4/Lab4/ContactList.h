//
//  ContactList.h
//  Lab4
//
//  Created by Suelen Tanaka on 2018-09-07.
//  Copyright © 2018 Suelen Tanaka. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject

@property (nonatomic, strong) NSMutableArray *contactList;

- (void) addContact: (Contact *) newContact;
- (NSString *) show: (int) indx;
- (int) find: (NSString *) substr;
- (BOOL) noDuplicates: (NSString *) email;

@end
