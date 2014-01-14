//
//  main.m
//  ObjectiveC2.0
//
//  Created by LinePlus on 2014. 1. 13..
//  Copyright (c) 2014년 LinePlus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSString *aName = @"Wonhyo Ewan Yi";
        NSString *aEmail = @"wonhyo.yi@linecorp.com";
        AddressCard *card1 = [[AddressCard alloc] init];
        
        [card1 setName:aName];
        [card1 setEmail:aEmail];
        [card1 print];
        
    }
    return 0;
}

