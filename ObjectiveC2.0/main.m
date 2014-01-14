//
//  main.m
//  ObjectiveC2.0
//
//  Created by LinePlus on 2014. 1. 13..
//  Copyright (c) 2014년 LinePlus. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSNumber    *myNumber, *floatNumber, *intNumber;
        NSInteger   myInt;
        
        //Integer value
        intNumber = [NSNumber numberWithInteger:100];
        myInt = [intNumber integerValue];
        NSLog(@"%li", (long) myInt);
        
        //Long value
        myNumber = [NSNumber numberWithLong: 0xbab0bab0];
        NSLog(@"%lx", [myNumber longValue]);
        
        //Char value
        myNumber = [NSNumber numberWithChar:'X'];
        NSLog(@"%c", [myNumber charValue]);
        
        //float value
        floatNumber = [NSNumber numberWithFloat:100.00];
        NSLog(@"%g", [floatNumber floatValue]);
        
        //double value
        myNumber = [NSNumber numberWithDouble:12345e+15];
        NSLog(@"%lg", [myNumber doubleValue]);
        
        //Error
        NSLog(@"%li", (long) [myNumber integerValue]);
        
        //equal or not equal
        if ([intNumber isEqualToNumber:floatNumber] == YES)
            NSLog(@"Numbers are equal");
        else NSLog(@"Nubmers are not equal");
        
        //larger or smaller
        if ([intNumber compare: myNumber] == NSOrderedAscending)
            NSLog(@"First number is less than second");
    }
    return 0;
}

