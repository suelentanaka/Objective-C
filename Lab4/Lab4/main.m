//
//  main.m
//  Lab4
//
//  Created by Suelen Tanaka on 2018-09-07.
//  Copyright © 2018 Suelen Tanaka. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        ContactList *contactList = [[ContactList alloc] init];
        
        while (true) {
            NSString *menu = @"\nWhat would you like to do next?\nnew - Create a new contact\nlist - List all contacts\nshow - Display details per index\nfind <keyword> - Find contact with a keyword\nhistory - View last 3 commands\nquit - Exit Application\n> ";
            NSString *option = [InputHandler getUserInputWithLength:20 withPrompt:menu];

            if ([option isEqualToString:@"quit"]) {
                break;
            } else if ([option isEqualToString:@"new"]) {
                // 1. get user input for name and email
                NSString *email = [InputHandler getUserInputWithLength:255 withPrompt:@"Enter the email: "];
                
                if ([contactList noDuplicates:email]) {
                    NSLog(@"ERROR: The contact already exists and cannot be created");
                } else {
                NSString *name = [InputHandler getUserInputWithLength:255 withPrompt:@"Enter the name: "];
                NSString *phone = [InputHandler getUserInputWithLength:10 withPrompt:@"\nDo you want to add a phone number? (y/n)"];
                while (YES) {
                    if ([phone isEqualToString:@"y"]) {
                        phone = [InputHandler getUserInputWithLength:20 withPrompt:@"\nEnter the phone number: "];
                        break;
                    } else if ([phone isEqualToString:@"n"]) {
                        break;
                    }
                }
                
                // 2. create a contact object based on the user input
                Contact *newContact = [[Contact alloc] initWithName:name andEmail:email andPhone:phone];
                
                // 3. add the contact to ContactList's contacList
                [contactList addContact:newContact];
                }
                
            } else if ([option isEqualToString:@"list"]) {
                NSLog(@"%@", contactList);
                
            } else if ([option isEqualToString:@"show"]) {
                NSString *contactIndex = [InputHandler getUserInputWithLength:10 withPrompt:@"\nEnter the index: "];
                NSLog(@"%@", [contactList show:[contactIndex intValue]]);
                
            } else if ([option containsString:@"find"]){
                NSArray *word = [option componentsSeparatedByString:@" "];
                if ([word count] > 1) {
                        NSString *substr = [word objectAtIndex:1];
                        NSLog(@"%@",[contactList show:[contactList find:substr]]);
                }
            }
        }
    }
    return 0;
}
