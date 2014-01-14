//
//  AddressCard.m
//  ObjectiveC2.0
//
//  Created by Wonhyo Yi on 2014. 1. 14..
//  Copyright (c) 2014년 LinePlus. All rights reserved.
//

#import "AddressCard.h"

@implementation AddressCard
{
    NSString *name;
    NSString *email;
}


// name = theName 으로 하면 AddressCard 객체가 자신의 멤버 객체를 소유하지 않게 된다.
// 메서드로 건네지는 인수의 참조만 담고 있게 됨.
- (void) setName:(NSString *)theName
{
    if (name != theName)
        name = [NSString stringWithString:theName];
}

- (void) setEmail:(NSString *)theEmail
{
    if (email != theEmail)
        email = [NSString stringWithString:theEmail];
}

- (NSString *)name
{
    return name;
}

- (NSString *)email
{
    return email;
}

- (void) print
{
    NSLog(@"==================================");
    NSLog(@"|                                |");
    NSLog(@"| %-31s|", name.UTF8String);
    NSLog(@"| %-31s|", email.UTF8String);
    NSLog(@"|                                |");
    NSLog(@"|                                |");
    NSLog(@"|                                |");
    NSLog(@"|        O               O       |");
    NSLog(@"==================================");
}

@end
