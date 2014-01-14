//
//  AddressCard.h
//  ObjectiveC2.0
//
//  Created by Wonhyo Yi on 2014. 1. 14..
//  Copyright (c) 2014년 LinePlus. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressCard : NSObject

- (void) setName: (NSString *) theName;
- (void) setEmail: (NSString *) theEmail;
- (NSString *) name;
- (NSString *) email;

- (void) print;

@end
