//
//  Patient.m
//  Lab7
//
//  Created by Suelen Tanaka on 2018-09-12.
//  Copyright © 2018 Suelen Tanaka. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"
#import "Prescription.h"

@interface Patient() {
    @private
    Boolean healthCard;
}

@end

@implementation Patient

- (instancetype)initWithName: (NSString *) name andWithAge: (NSUInteger) age andHealthCard: (Boolean) card andSymptom: (NSString *) symptom
{
    self = [super init];
    if (self) {
        _name = name;
        _age = &age;
        healthCard = card;
        _symptom = symptom;
        _prescriptionList = [NSMutableArray new];
    }
    return self;
}

- (Boolean) visitDoctor: (Doctor *) doctor {
    return [doctor acceptPatient: self withHealthCard: healthCard];
}

- (void) requestPrescrition: (Doctor *) doctor {
    if ([doctor givePrescription:self]) {
        NSLog(@"Got the prescription!");
    } else {
        NSLog(@"REJECTED! No medication...");
    }
}

- (void) requestMedication: (Doctor *) doctor {
    // doctor checking if self (patient) is in the patient list
    if ([doctor prescribeMedication:self]) {
        NSLog(@"Got the medication!");
    } else {
        NSLog(@"REJECTED! No medication...");
    }
}

@end
