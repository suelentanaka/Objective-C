//
//  Patient.h
//  Lab7
//
//  Created by Suelen Tanaka on 2018-09-12.
//  Copyright © 2018 Suelen Tanaka. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "Doctor.h"
@class Doctor;

@interface Patient : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) NSUInteger *age;
@property (nonatomic, strong) NSString *symptom;
@property (nonatomic, strong) NSString *medication;
@property (nonatomic, strong) NSMutableArray *prescriptionList;

- (instancetype)initWithName: (NSString *) name andWithAge: (NSUInteger) age andHealthCard: (Boolean) card andSymptom: (NSString *) symptom;
- (Boolean) visitDoctor: (Doctor *) doctor;
- (void) requestMedication: (Doctor *) doctor;
- (void) requestPrescrition: (Doctor *) doctor;

@end
