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
        NSDictionary *glossary = @{
                                   @"abstract class":
                                       @"A class defined so other classes can inherit from it",
                                   @"adopt":
                                       @"To implement all the methods defined in a protocol",
                                   @"archiving":
                                       @"Storing an object for later use"
                                   };
        
        if ([glossary writeToFile: @"/Users/lineplus/Documents/Objective-C/ObjectiveC2.0/glossary" atomically: YES] == NO)
            NSLog(@"Save to file failed");
    }
    return 0;
}