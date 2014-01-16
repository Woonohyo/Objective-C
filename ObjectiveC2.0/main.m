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
        Fraction *frac1 = [[Fraction alloc] init];
        Fraction *frac2 = [[Fraction alloc] init];
        
        // Set 1st fraction to 2/3
        [frac1 setNumerator: 2];
        [frac1 setDenominator: 3];
        
        // Set 2nd fraction to 3/7
        [frac2 setNumerator: 3];
        [frac2 setDenominator: 7];
        
        // Display the fractions
        
        NSLog(@"First fraction is: ");
        [frac1 print];
        
        NSLog(@"Second fraction is: ");
        [frac2 print];
        
        [frac1 release];
        [frac2 release];

    }
    return 0;
}