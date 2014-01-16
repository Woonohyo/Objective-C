//
//  main.m
//  ObjectiveC2.0
//
//  Created by Woonohyo on 2014. 1. 13..
//  Copyright (c) 2014년 Woonohyo. All rights reserved.
//
// Basic Directory Operation

#import <Foundation/Foundation.h>
#import "Fraction.h"
#define PATH @"/Users/lineplus/Documents/Objective-C/ObjectiveC2.0/"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        Fraction *f1 = [[Fraction alloc] init];
        Fraction *f2;
        
        [f1 setTo: 2 over: 5];
        f2 = [f1 copy];
        
        [f2 setTo: 1 over: 3];
        
        [f1 print];
        [f2 print];
        
    }
    return 0;
}