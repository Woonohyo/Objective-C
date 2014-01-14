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
        NSString *aName = @"Wonhyo Ewan Yi";
        NSString *aEmail = @"wonhyo.yi@linecorp.com";
        NSString *bName = @"Minju Jane Kim";
        NSString *bEmail = @"minju.kim@nhnnext.org";
        NSString *cName = @"Dayoungle Jun";
        NSString *cEmail = @"dayoungle.jun@nhnnext.org";
        
        AddressCard *card1 = [[AddressCard alloc] init];
        AddressCard *card2 = [[AddressCard alloc] init];
        AddressCard *card3 = [[AddressCard alloc] init];
        
        AddressBook *myBook = [[AddressBook alloc] initWithName:@"Woonohyo's Address Book"];
        
        [card1 setName:aName andEmail:aEmail];
        [card2 setName:bName andEmail:bEmail];
        [card3 setName:cName andEmail:cEmail];
        
        [myBook addCard: card1];
        [myBook addCard: card2];
        [myBook addCard: card3];
        
        NSLog(@"Entries in address book after adding cards: %li", [myBook entries]);
        
        [myBook list];
    }
    return 0;
}

