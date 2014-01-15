//
//  main.m
//  ObjectiveC2.0
//
//  Created by LinePlus on 2014. 1. 13..
//  Copyright (c) 2014년 LinePlus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressBook.h"

// Creating Integer Object
#define INTOBJ(v) [NSNumber numberWithInteger: v]

// Adding print method to NSSet as Printing category
@interface NSSet (Printing)
- (void) print;
@end

@implementation NSSet (Printing)
- (void) print {
    printf ("{ ");
    
    for (NSNumber *element in self)
        printf (" %li ", (long) [element integerValue]);
    
    printf ("} \n");
}
@end

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSMutableSet *set1 = [NSMutableSet setWithObjects:INTOBJ(1), INTOBJ(3), INTOBJ(5), INTOBJ(10), nil];
        NSSet *set2 = [NSSet setWithObjects:INTOBJ(-5), INTOBJ(100), INTOBJ(3), INTOBJ(5), nil];
        NSSet *set3 = [NSSet setWithObjects:INTOBJ(12), INTOBJ(200), INTOBJ(3), nil];
        
        NSLog(@"set1: ");
        [set1 print];
        NSLog(@"set2: ");
        [set2 print];
        
        // Equality Test
        if ([set1 isEqualToSet:set2] == YES)
            NSLog(@"set1 equals set2");
        else
            NSLog(@"set1 is not equal to set2");
        
        // Membership Test
        if ([set1 containsObject:INTOBJ(10)] == YES)
            NSLog(@"set1 contains 10");
        else
            NSLog(@"set1 doesn't contain 10");
        
        if ([set2 containsObject:INTOBJ(10)] == YES)
            NSLog(@"set2 contains 10");
        else
            NSLog(@"set2 doesn't contain 10");
        
        // adding and removing objects of mutableset set1.
        [set1 addObject:INTOBJ(4)];
        [set1 removeObject:INTOBJ(10)];
        NSLog(@"set1 after adding 4 and removing 10: ");
        [set1 print];
        
        // get intersectset.
        [set1 intersectSet: set2];
        NSLog(@"set1 intersect set2: ");
        [set1 print];
        
        // get unionset
        [set1 unionSet: set2];
        NSLog(@"set1 union set3: ");
        [set1 print];
    }
    return 0;
}

