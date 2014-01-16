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
        NSMutableArray      *dataArray = [NSMutableArray arrayWithObjects:@"one", @"two", @"three", @"four", nil];
        NSMutableArray      *dataArray2;
        
        // simple assignment
        
        dataArray2 = dataArray;
        [dataArray2 removeObjectAtIndex: 0];
        
        NSLog(@"dataArray: ");
        for ( NSString *elem in dataArray )
            NSLog(@"    %@", elem);
        
        NSLog(@"dataArray2: ");
        for ( NSString *elem in dataArray2 )
            NSLog(@"    %@", elem);
        
        // try a copy, then remove the first elemtns from the copy
        
        dataArray2 = [dataArray mutableCopy];
        [dataArray2 removeObjectAtIndex: 0];
        
        NSLog(@"dataArray: ");
        for ( NSString *elem in dataArray )
            NSLog(@"    %@", elem);
        
        NSLog(@"dataArray2: ");
        for ( NSString *elem in dataArray2 )
            NSLog(@"    %@", elem);

    }
    return 0;
}