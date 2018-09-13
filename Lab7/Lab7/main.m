//
//  main.m
//  Lab7
//
//  Created by Suelen Tanaka on 2018-09-12.
//  Copyright © 2018 Suelen Tanaka. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Doctor.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Patient *kenta = [[Patient alloc] initWithName:@"Kenta" andWithAge:24 andHealthCard:YES andSymptom:@"Cough"];
        Patient *javier = [[Patient alloc] initWithName:@"Javier" andWithAge:24 andHealthCard:NO andSymptom:@"Nothing"];
        Doctor  *minami = [[Doctor alloc] initWithName:@"Minami" andWithSpecialization:@"General"];
        
        [kenta visitDoctor:minami];
        [kenta requestPrescrition:minami];
        [kenta requestMedication:minami];
        
        
    }
    return 0;
}
