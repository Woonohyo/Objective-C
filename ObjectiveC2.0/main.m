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
        NSMutableArray *numbers = [NSMutableArray array];
        NSNumber *myNumbers;
        int i;
        
        for ( i = 0; i < 10; i++) {
            myNumbers = [NSNumber numberWithInteger: i];
            [numbers addObject:myNumbers];
        }
        
        for ( i = 0; i < 10; i++) {
            myNumbers = [numbers objectAtIndex: i];
            NSLog(@"%@", myNumbers);
        }
        
        NSLog(@"======  Using a single NSLog");
        NSLog(@"%@", numbers);
    }
    return 0;
}

