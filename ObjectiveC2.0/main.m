//
//  main.m
//  ObjectiveC2.0
//
//  Created by Woonohyo on 2014. 1. 13..
//  Copyright (c) 2014년 Woonohyo. All rights reserved.
//
// Basic Directory Operation

#import <Foundation/Foundation.h>

#define PATH @"/Users/lineplus/Documents/Objective-C/ObjectiveC2.0/"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        NSURL *myURL = [NSURL URLWithString:@"http://www.naver.com"];
        
        NSString *myHomePage = [NSString stringWithContentsOfURL:myURL encoding:NSUTF8StringEncoding error: NULL];
        NSLog(@"%@", myHomePage);
    }
    return 0;
}