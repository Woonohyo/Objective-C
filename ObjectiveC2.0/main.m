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
        NSMutableArray      *dataArray = [NSMutableArray arrayWithObjects:
                                          [NSMutableString stringWithString:@"one"],
                                          [NSMutableString stringWithString:@"two"],
                                          [NSMutableString stringWithString:@"three"],
                                          nil
                                          ];
        
        NSMutableArray      *dataArray2;
        NSMutableString     *mStr;
        
        NSLog(@"dataArray: ");
        for ( NSString *elem in dataArray )
            NSLog(@"    %@", elem);
        
        // make a copy, then change one of the strings
        dataArray2 = [dataArray mutableCopy];
        
        mStr = dataArray[0];
        [mStr appendString:@"ONE"];
        
        NSLog(@"dataArray:" );
        for ( NSString *elem in dataArray )
            NSLog(@"    %@", elem);
        
        NSLog(@"dataArray2: ");
        for ( NSString *elem in dataArray2 )
            NSLog(@"    %@", elem);
        
    }
    return 0;
}