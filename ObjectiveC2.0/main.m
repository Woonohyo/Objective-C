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
        NSRange subRange;
       
        // 첫 3번째 문자까지 추출
        res = [str1 substringToIndex: 3];
        NSLog(@"First 3 chars of str1: %@", res);
        
        // 인덱스 5부터 끝까지 문자 추출
        res = [str1 substringFromIndex: 5];
        NSLog(@"Chars from index 5 of str1: %@", res);
        
        // index 8 ~ 13 (6 chars)
        res = [[str1 substringFromIndex: 8] substringToIndex: 6];
        NSLog(@"Chars from index 8 to 13 of str1: %@", res);
        
        //easier way of just above one.
        res = [str1 substringWithRange:NSMakeRange(8, 6)];
        NSLog(@"Chars from index 8 to 13 of str1: %@", res);
        
        // find string within string
        subRange = [str1 rangeOfString:@"string A"];
        NSLog(@"String is at index %lu, length is %lu", subRange.location, subRange.length);
        
        subRange = [str2 rangeOfString:@"string B"];
        
        if (subRange.location == NSNotFound)
            NSLog(@"String not found");
        else
            NSLog(@"String is at index %lu, length is %lu", subRange.location, subRange.length);
    
    }
    return 0;
}

