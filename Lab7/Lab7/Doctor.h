//
//  Doctor.h
//  Lab7
//
//  Created by Suelen Tanaka on 2018-09-12.
//  Copyright © 2018 Suelen Tanaka. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Prescription;
@class Patient;

@interface Doctor : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *specialization;
@property (nonatomic, strong) NSString *medication;

- (instancetype)initWithName: (NSString *) name andWithSpecialization: (NSString *) specialization;
- (Boolean) acceptPatient: (Patient *) patient withHealthCard: (Boolean) healthCard;
- (Boolean) prescribeMedication: (Patient *) patient;
- (Boolean) givePrescription: (Patient *) patient;

@end
