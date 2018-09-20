//
//  main.m
//  Lab13
//
//  Created by Suelen Tanaka on 2018-09-20.
//  Copyright © 2018 Suelen Tanaka. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PigLatin.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        PigLatin *pigLatin = [PigLatin new];
        NSLog(@"%@", [pigLatin stringByPigLatinization:@"\nInput words:"]);
    }
    return 0;
}
