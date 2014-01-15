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
        NSMutableDictionary *glossary = [NSMutableDictionary dictionary];
        
        //save 3 objs to dictionary
        
        [glossary setObject:@"A class defined so other class can inherit from it" forKey:@"abstract class"];
        [glossary setObject:@"To implement all the methods defined in a protocol" forKey:@"adopt"];
        [glossary setObject:@"Storing an object for later use" forKey:@"archiving"];
        
        // print
        NSLog(@"abstract class: %@", [glossary objectForKey:@"abstract class"]);
        NSLog(@"adopt: %@", [glossary objectForKey:@"adopt"]);
        NSLog(@"archiving: %@", [glossary objectForKey:@"archiving"]);
    }
    return 0;
}

