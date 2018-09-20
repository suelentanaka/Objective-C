//
//  PigLatin.m
//  Lab13
//
//  Created by Suelen Tanaka on 2018-09-20.
//  Copyright © 2018 Suelen Tanaka. All rights reserved.
//

#import "PigLatin.h"

@implementation PigLatin

- (instancetype)init
{
    self = [super init];
    if (self) {
    }
    return self;
}

-(NSString *) stringByPigLatinization: (NSString *) prompt {
    char inputChars[255];
    
    NSLog(@"%@", prompt);
    NSCharacterSet *consonants = [NSCharacterSet characterSetWithCharactersInString:@"bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ"];
    fgets(inputChars, 255, stdin);
    NSString *input =[NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
    NSString *trimmed = [input stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSArray *array = [trimmed componentsSeparatedByString:@" "];
    NSMutableString *pigLatined = [NSMutableString new];
    for (NSString *word in array){
        int i = 0;
        while (1) {
            NSString * newString = [word substringWithRange:NSMakeRange(i, 1)];
            NSRange range = [newString rangeOfCharacterFromSet:consonants options:NSCaseInsensitiveSearch];
            if(range.location == NSNotFound)
                break;
            i++;
        }
        NSString *remain = [word substringWithRange:NSMakeRange(i, [word length] - i)];
        NSString *firstChar = [remain substringToIndex:1];
        [pigLatined appendString:[firstChar uppercaseString]];
        [pigLatined appendString:[remain substringFromIndex:1]];
        NSString *consonants = [word substringWithRange:NSMakeRange(0, i)];
        [pigLatined appendString:consonants];
        [pigLatined appendString:@"ay"];
        [pigLatined appendString:@" "];
    }
    return pigLatined;
}
@end
