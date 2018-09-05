//
//  main.m
//  Lab2
//
//  Created by Suelen Tanaka on 2018-09-05.
//  Copyright © 2018 Suelen Tanaka. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Box *box1 = [[Box alloc] initWithWidth:10 andHeight:10 andLength:10];
        Box *box2 = [[Box alloc] initWithWidth:5 andHeight:5 andLength:5];
        
        float ratio = [box1 volume] / [box2 volume];
        NSLog(@"Box1 fits %.0f Box2", ratio);
        
        
    }
    return 0;
}
