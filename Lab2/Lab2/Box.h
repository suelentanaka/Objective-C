//
//  Box.h
//  Lab2
//
//  Created by Suelen Tanaka on 2018-09-05.
//  Copyright © 2018 Suelen Tanaka. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject

@property (nonatomic, assign) float width;
@property (nonatomic, assign) float height;
@property (nonatomic, assign) float length;
@property (nonatomic, assign) float volume;

- (instancetype)initWithWidth: (float) width andHeight: (float) height andLength: (float) length;

- (float) volume;

@end
