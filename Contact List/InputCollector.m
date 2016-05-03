//
//  InputCollector.m
//  Contact List
//
//  Created by Anton Moiseev on 2016-05-03.
//  Copyright © 2016 Anton Moiseev. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

-(NSString *)inputForPrompt:(NSString *)propmtString {
    
    NSLog(@"%@", propmtString);
    char string[255];
    fgets(string, 255, stdin);
    NSString *inputString = [NSString stringWithUTF8String:string];
    inputString = [inputString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    return inputString;
    
}

@end
