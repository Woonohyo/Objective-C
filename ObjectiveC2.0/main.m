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
        NSDictionary *glossary;
        
        glossary = [NSDictionary dictionaryWithContentsOfFile:@"/Users/lineplus/Documents/Objective-C/ObjectiveC2.0/glossary"];
        
        for (NSString *key in glossary)
            NSLog(@"%@: %@", key, [glossary objectForKey: key]);
    }
    return 0;
}