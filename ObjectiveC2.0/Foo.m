//
//  Foo.m
//  ObjectiveC2.0
//
//  Created by Woonohyo on 2014. 1. 16..
//  Copyright (c) 2014년 LinePlus. All rights reserved.
//

#import "Foo.h"

@implementation Foo
@synthesize strVal, intVal, floatVal;

- (void) encodeWithCoder:(NSCoder *) enCoder
{
    [enCoder encodeObject: strVal forKey: @"FoostrVal"];
    [enCoder encodeInt: intVal forKey: @"FoointVal"];
    [enCoder encodeFloat:floatVal forKey: @"FoofloatVal"];
}

- (id) initWithCoder:(NSCoder *) decoder
{
    strVal = [decoder decodeObjectForKey:@"FoostrVal"];
    intVal = [decoder decodeIntForKey:@"FoointVal"];
    floatVal = [decoder decodeFloatForKey:@"FoofloatVal"];
    
    return self;
}
@end
