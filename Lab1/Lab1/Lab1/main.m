//
//  main.m
//  Lab1
//
//  Created by Suelen Tanaka on 2018-09-04.
//  Copyright © 2018 Suelen Tanaka. All rights reserved.
//

#import <Foundation/Foundation.h>

NSString *getUserInput(NSString *prompt) {
    char inputChars[255];
    NSLog(@"%@", prompt);
    fgets(inputChars, 255, stdin);
    
    NSString *inputString = [NSString stringWithUTF8String:inputChars];
    
    // brackets are used to call a function [NSString is the class and stringWithUTF8String is the function that converts a C string into a Obj-C str]
    // NSLog(@"Input was %@", inputString);
    
    return [inputString stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //        JAVA: Strin str = "Hello World";
        //        NSString *str = @"Hello World";
        //        NSLog(@"%@", str);
        
        while (1) {
            NSString *input = getUserInput(@"\nEnter a string o type q to quit: \n");
            if ([input isEqualToString:@"q"]) {break;}
            while (1) {
                NSString *choice = getUserInput(@"\nChoose one option:\n1. Uppercase\n2. Lowecase\n3. Numberize\n4. Canadianize\n5. Respond\n6. De-Space-It");
                if ([choice isEqualToString:@"1"]) {
                    NSLog(@"%@", [input uppercaseString]);
                } else if ([choice isEqualToString:@"2"]) {
                    NSLog(@"%@", [input lowercaseString]);
                } else if ([choice isEqualToString:@"3"]) {
                    NSInteger inputNSInt = [input integerValue];
                    NSLog(@"%ld", (long)inputNSInt);
                } else if ([choice isEqualToString:@"4"]) {
                    NSString *canadianized = [input stringByAppendingString: @", eh"];
                    NSLog(@"%@", canadianized);
                } else if ([choice isEqualToString:@"5"]) {
                    NSString *last = [input substringFromIndex: [input length] -1];
                    if ([last isEqualToString:@"?"]) {
                        NSLog(@"%@", @"I don't know!");
                    } else if ([last isEqualToString:@"!"]) {
                        NSLog(@"%@", @"Whoa, calm down!");
                    }
                } else if ([choice isEqualToString:@"6\n"]) {
                    NSString *despace = [input stringByReplacingOccurrencesOfString:@" " withString:@"-"];
                    NSLog(@"%@", despace);
                } 
            }
        }
    }
    return 0;
}
