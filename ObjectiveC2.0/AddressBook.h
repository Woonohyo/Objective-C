//
//  AddressBook.h
//  ObjectiveC2.0
//
//  Created by Wonhyo Yi on 2014. 1. 14..
//  Copyright (c) 2014년 LinePlus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"

@interface AddressBook : NSObject <NSCoding, NSCopying>

@property (nonatomic, copy) NSString *bookName;
@property (nonatomic, strong) NSMutableArray *book;

- (id) initWithName: (NSString *) name;

- (void) addCard: (AddressCard *) theCard;
- (void) removeCard: (AddressCard *) theCard;

- (NSUInteger) entries;
- (void) list;
- (AddressCard *) lookup: (NSString *) theName;

- (void) sort;

@end
