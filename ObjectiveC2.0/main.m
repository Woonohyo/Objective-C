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
        NSString *bName = @"Minju Jane Kim";
        NSString *bEmail = @"minju.kim@nhnnext.org";
        
        AddressCard *card1 = [[AddressCard alloc] init];
        AddressCard *card2 = [[AddressCard alloc] init];
        
        [card1 setName:aName andEmail:aEmail];
        [card2 setName:bName andEmail:bEmail];
        
        [card1 print];
        [card2 print];
        
    }
    return 0;
}

