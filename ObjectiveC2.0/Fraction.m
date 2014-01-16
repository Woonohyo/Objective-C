//
//  Fraction.m
//  ObjectiveC2.0
//
//  Created by Woonohyo on 2014. 1. 16..
//  Copyright (c) 2014년 LinePlus. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
@synthesize numerator, denominator;
- (void)print
{
    NSLog(@"%i/%i", numerator, denominator);
}
@end
