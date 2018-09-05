//
//  Student.m
//  Lab2
//
//  Created by Suelen Tanaka on 2018-09-05.
//  Copyright © 2018 Suelen Tanaka. All rights reserved.
//

#import "Student.h"

// Class - User-defined type (template)
// can have
// - properties, states (attributes): public (in .h file) or private
// - methods (behaviors)

@interface Student ()
// define private properties - automatically creates getter and setter
// define private methods
@end

@implementation Student {
// define private instance variables
//    int _id;
//    NSString *_name;
//    NSString *_country;
    
}
// implement methods

// Constructors are Initializers in Obj-C
- (instancetype)initWithId: (int) identification andName: (NSString *) name andCountry: (NSString *) country
{
    self = [super init]; // calls a superclass init
    if (self) {
        self.identification = identification; //calls a getter o identification
        _identification = identification; // faster and more common in obj-C
        _name = name;
        _country = country;
    }
    return self;
}

//getters
//- (int) getId {
//    return _id;
//}
//
//- (NSString *) getName {
//    return _name;
//}
//
//- (NSString *) getCountry {
//    return _country;
//}

//setters
//- (void) setId: (int) Id {
//    _id = Id;
//}

//- (void) setName: (NSString *) name {
//    _name = name;
//}
//
//- (void) setCountry: (NSString *) country {
//    _country = country;
//}
@end








