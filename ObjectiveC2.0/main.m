//
//  main.m
//  ObjectiveC2.0
//
//  Created by LinePlus on 2014. 1. 13..
//  Copyright (c) 2014년 LinePlus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressBook.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSDictionary *glossary = [NSDictionary dictionaryWithObjectsAndKeys:
                                  @"A class defined so other classes can inherit from it",
                                  @"abstract class",
                                  @"To implement all the methods in a protocol",
                                  @"adopt",
                                  @"Storing an object for later use",
                                  @"archiving",
                                  nil
                                  ];
        for ( NSString *key in glossary )
        {
            NSLog(@"%@: %@", key, [glossary objectForKey:key]);
        }
        
        }
    return 0;
}

