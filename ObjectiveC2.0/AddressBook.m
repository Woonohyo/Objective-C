//
//  AddressBook.m
//  ObjectiveC2.0
//
//  Created by Wonhyo Yi on 2014. 1. 14..
//  Copyright (c) 2014년 LinePlus. All rights reserved.
//

#import "AddressBook.h"

@implementation AddressBook
@synthesize bookName, book;

- (id)initWithName:(NSString *)name
{
    self = [super init];
    
    if (self) {
        bookName = [NSString stringWithString:name];
        book = [NSMutableArray array];
    }
    return self;
}

- (id) init
{
    // if someone does an alloc followed by an init, set up with NoName.
    return [self initWithName:@"NoName"];
}

- (void)addCard:(AddressCard *)theCard
{
    [book addObject: theCard];
}

- (NSUInteger) entries
{
    return [book count];
}

- (void) list
{
    NSLog(@"======== Contents of %@ ========", bookName);
    
    // fast enumeration.
    // ***Another way***
    // [[AddressCard *theCard alloc] init]
    // for (theCard in book)
    
    for ( AddressCard *theCard in book )
    {
        NSLog(@"%-20s      %-32s", [theCard.name UTF8String], [theCard.email UTF8String]);
    }
    NSLog(@"=====================================================");
}

- (AddressCard *)lookup:(NSString *)theName
{
    for (AddressCard *nextCard in book)
        if ([nextCard.name caseInsensitiveCompare:theName] == NSOrderedSame)
            return nextCard;
    return nil;
}

- (void)removeCard:(AddressCard *)theCard
{
    [book removeObjectIdenticalTo: theCard];
}

- (void)sort
{
    [book sortUsingSelector: @selector(compareNames:)];
}

@end
