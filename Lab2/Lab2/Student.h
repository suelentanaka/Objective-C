//
//  Student.h
//  Lab2
//
//  Created by Suelen Tanaka on 2018-09-05.
//  Copyright © 2018 Suelen Tanaka. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject

// define public properties
// define public methods

- (instancetype)initWithId: (int) identification andName: (NSString *) name andCountry: (NSString *) country; // prototype

@property (nonatomic, assign) int identification; //this property already creates getter and setter
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *country;

//- (NSString *) getName;

@end
