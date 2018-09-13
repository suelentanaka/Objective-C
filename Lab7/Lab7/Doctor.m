//
//  Doctor.m
//  Lab7
//
//  Created by Suelen Tanaka on 2018-09-12.
//  Copyright © 2018 Suelen Tanaka. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"
#import "Prescription.h"

@interface Doctor() {
    @private
    NSMutableArray *patientList;
    NSMutableArray *prescriptionList;
}
@end

@implementation Doctor

- (instancetype)initWithName: (NSString *) name andWithSpecialization: (NSString *) specialization
{
    self = [super init];
    if (self) {
        _name = name;
        _specialization = specialization;
        patientList = [NSMutableArray new];
        prescriptionList = [NSMutableArray new];
    }
    return self;
}

- (Boolean) acceptPatient: (Patient *) patient withHealthCard: (Boolean) healthCard {
    if (healthCard) {
        [patientList addObject:patient];
        NSLog(@"Successfully added to the patient list.");
        return YES;
    } else {
        NSLog(@"Invalid HealthCard");
        return NO;
    }
}

- (Boolean) prescribeMedication: (Patient *) patient {
    if ([patientList containsObject:patient]) {
        NSLog(@"Medication on the way...");
        return YES;
    } else {
        NSLog(@"You are not my patient.");
        return NO;
    }
}

- (Boolean) givePrescription: (Patient *) patient{
        NSString *symptom = [patient symptom];
        NSString *medication = [self medication];
        //create a prescription (separate object that can be shared between patient and doctor w/ patientName, doctorName, symptom and description -> keep track (patient and doctor can have a list of prescriptions)
        Prescription *prescription = [[Prescription new] initWithPatientName:patient andDoctorName:self andSymptom:symptom andMedication:medication];
        if ((symptom = @"Cough")) {
            medication = @"Cough syrup";
            NSLog(@"I'm prescribing some cough syrup.");
            [[patient prescriptionList]addObject:prescription];
            [prescriptionList addObject:prescription];
            return YES;
        } else {
            NSLog(@"You don't need a prescription");
            return NO;
        }
}

@end
