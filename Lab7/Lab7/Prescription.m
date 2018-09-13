//
//  Prescription.m
//  Lab7
//
//  Created by Suelen Tanaka on 2018-09-12.
//  Copyright © 2018 Suelen Tanaka. All rights reserved.
//

#import "Prescription.h"

@implementation Prescription

- (instancetype)initWithPatientName: (Patient *) patName andDoctorName: (Doctor *) docName andSymptom: (NSString *) patSymptom andMedication: (NSString *) medication
{
    self = [super init];
    if (self) {
        _patientName = patName;
        _doctorName = docName;
        _symptom = patSymptom;
        _medication = medication;
    }
    return self;
}

@end
