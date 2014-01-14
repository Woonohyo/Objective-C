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
        NSString *str1 = @"This is string A ";
        NSString *str2 = @"This is string B ";
        NSString *res;
        NSComparisonResult compareResult;
        
        //Counting chars
        NSLog(@"Length of str1: %lu", [str1 length]);
        
        //Copying str
        res = [NSString stringWithString:str1];
        NSLog(@"copy: %@", res);
        
        //Concatenating str
        str2 = [str1 stringByAppendingString:str2];
        NSLog(@"Concatentation: %@", str2);
        
        //check equality
        if ([str1 isEqualToString:res] == YES)
            NSLog(@"str1 == res");
        else
            NSLog(@"str1 != res");
        
        // comparing length of strs
        compareResult = [str1 compare:str2];
        
        if (compareResult == NSOrderedAscending)
            NSLog(@"str2 is longer than str1");
        else if (compareResult == NSOrderedDescending)
            NSLog(@"str1 is longer than str2");
        else
            NSLog(@"same length");
        
        // uppercasing
        res = [str1 uppercaseString];
        NSLog(@"Uppercase conversion: %s", [res UTF8String]);
        
        // lowercasing
        res = [str1 lowercaseString];
        NSLog(@"Lowercase conversion: %s", [res UTF8String]);
        
        NSLog(@"Original String: %@", str1);
    }
    return 0;
}

