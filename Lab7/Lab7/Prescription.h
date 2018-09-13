//
//  Prescription.h
//  Lab7
//
//  Created by Suelen Tanaka on 2018-09-12.
//  Copyright © 2018 Suelen Tanaka. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

@interface Prescription : NSObject

@property (nonatomic, strong) Patient *patientName;
@property (nonatomic, strong) Doctor *doctorName;
@property (nonatomic, strong) NSString *symptom;
@property (nonatomic, strong) NSString *medication;

- (instancetype)initWithPatientName: (Patient *) patName andDoctorName: (Doctor *) docName andSymptom: (NSString *) patSymptom andMedication: (NSString *) medication;

@end

