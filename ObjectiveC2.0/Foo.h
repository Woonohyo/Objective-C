//
//  Foo.h
//  ObjectiveC2.0
//
//  Created by Woonohyo on 2014. 1. 16..
//  Copyright (c) 2014년 LinePlus. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Foo : NSObject <NSCoding>

@property (copy, nonatomic) NSString *strVal;
@property int intVal;
@property float floatVal;
@end
