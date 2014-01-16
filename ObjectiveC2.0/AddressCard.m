//
//  AddressCard.m
//  ObjectiveC2.0
//
//  Created by Wonhyo Yi on 2014. 1. 14..
//  Copyright (c) 2014년 LinePlus. All rights reserved.
//

#import "AddressCard.h"

@implementation AddressCard
@synthesize name, email;


// name = theName 으로 하면 AddressCard 객체가 자신의 멤버 객체를 소유하지 않게 된다.
// 메서드로 건네지는 인수의 참조만 담고 있게 됨.
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

- (void)setName:(NSString *)theName andEmail:(NSString *)theEmail
{
    // [self setName: theName]과 동일한 기능.
    self.name = theName;
    self.email = theEmail;
    
    //단, name = theName 인스턴스 변수에 인수의 값을 바로 대입.
}

- (NSComparisonResult)compareNames:(id)element
{
    return [[element name] compare: name];
}

- (void)assignName:(NSString *)theName andEmail:(NSString *)theEmail
{
    name = theName;
    email = theEmail;
}

- (AddressCard *) copyWithZone: (NSZone *) zone
{
    AddressCard *newCard = [[AddressCard allocWithZone: zone] init];
    
    [newCard assignName: name andEmail: email];
    return newCard;
}

- (void) encodeWithCoder: (NSCoder *) encoder
{
    [encoder encodeObject: name forKey: @"AddressCardName"];
    [encoder encodeObject: email forKey: @"AddressCardEmail"];
}

- (id) initWithCoder: (NSCoder *) decoder
{
    name = [decoder decodeObjectForKey:@"AddressCardName"];
    email = [decoder decodeObjectForKey:@"AddressCardName"];
    
    return self;
}

@end
