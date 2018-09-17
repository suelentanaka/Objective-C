//
//  InputHandler.h
//  Lab10
//
//  Created by Suelen Tanaka on 2018-09-14.
//  Copyright © 2018 Suelen Tanaka. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputHandler : NSObject

+ (NSString *) getUserInputWithLength: (int) maxLength withPrompt: (NSString *) prompt;

@end
