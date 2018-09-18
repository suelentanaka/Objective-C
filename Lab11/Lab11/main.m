//
//  main.m
//  Lab11
//
//  Created by Suelen Tanaka on 2018-09-17.
//  Copyright © 2018 Suelen Tanaka. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"
#import "Pizza.h"
#import "NoAnchoviesManager.h"
#import "CheeryManager.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        Kitchen *restaurantKitchen = [Kitchen new];
        NoAnchoviesManager *giada = [NoAnchoviesManager new];
        CheeryManager *javier = [CheeryManager new];
        
        NSLog(@"\nAny manager preference?\n1: Giada | 2: Javier | 3: No");
        NSLog(@"> ");
        char str[100];
        fgets (str, 100, stdin);
        
        NSString *managerOption = [[NSString alloc] initWithUTF8String:str];
        NSInteger option = [[managerOption stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] integerValue];
        
        NSLog(@"Input: %ld", (long)option);
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];

            switch (option) {
                case 1:
                    restaurantKitchen.delegate = giada;
                    if ([commandWords[0] isEqualToString:@"small"]) {
                        NSLog(@"Giada: %@",[restaurantKitchen makePizzaWithSize:(PizzaSize)small toppings:@[commandWords[1], commandWords[2], commandWords[3]]]);
                    } else if ([commandWords[0] isEqualToString:@"medium"]) {
                        NSLog(@"Giada: %@",[restaurantKitchen makePizzaWithSize:(PizzaSize)medium toppings:@[commandWords[1], commandWords[2], commandWords[3]]]);
                    } else if ([commandWords[0] isEqualToString:@"large"]) {
                        NSLog(@"Giada: %@",[restaurantKitchen makePizzaWithSize:(PizzaSize)large toppings:@[commandWords[1], commandWords[2], commandWords[3]]]);
                    } else {
                        NSLog(@"We don't make pizza this size");
                    }
                    break;
                case 2:
                    restaurantKitchen.delegate = javier;
                    NSLog(@"Javier: %@",[restaurantKitchen makePizzaWithSize:(PizzaSize)large toppings:@[commandWords[1], commandWords[2], commandWords[3]]]);
                    break;
                case 3:
                    restaurantKitchen.delegate = nil;
                    if ([commandWords[0] isEqualToString:@"small"]) {
                        NSLog(@"Kitchen: %@",[restaurantKitchen makePizzaWithSize:(PizzaSize)small toppings:@[commandWords[1], commandWords[2], commandWords[3]]]);
                    } else if ([commandWords[0] isEqualToString:@"medium"]) {
                        NSLog(@"Kitchen: %@",[restaurantKitchen makePizzaWithSize:(PizzaSize)medium toppings:@[commandWords[1], commandWords[2], commandWords[3]]]);
                    } else if ([commandWords[0] isEqualToString:@"large"]) {
                        NSLog(@"Kitchen: %@",[restaurantKitchen makePizzaWithSize:(PizzaSize)large toppings:@[commandWords[1], commandWords[2], commandWords[3]]]);
                    } else {
                        NSLog(@"We don't make pizza this size");
                    }
                    break;
                default:
                    break;
            }
            
//            restaurantKitchen.delegate = javier;

        }
        
    }
    return 0;
}

