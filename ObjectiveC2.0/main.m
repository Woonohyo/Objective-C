//
//  main.m
//  ObjectiveC2.0
//
//  Created by LinePlus on 2014. 1. 13..
//  Copyright (c) 2014년 LinePlus. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSString *str1 = @"This is string A";
        NSString *search, *replace;
        NSMutableString *mstr;
        NSRange substr;
        
        // making of mutable string from nonmutable string
        mstr = [NSMutableString stringWithString: str1];
        NSLog(@"%@", mstr);
        
        // insert char
        [mstr insertString:@" mutable" atIndex:7];
        NSLog(@"%@", mstr);
        
        // concatenation to the end
        [mstr insertString:@"and string B" atIndex:[mstr length]];
        NSLog(@"%@", mstr);
        
        // direct use of appendString
        [mstr appendString:@"and strign C"];
        NSLog(@"%@", mstr);
        
        // deletion of substring with given range.
        [mstr deleteCharactersInRange:NSMakeRange(16, 13)];
        NSLog(@"%@", mstr);
        
        // deletion of substring by finding range of it.
        substr = [mstr rangeOfString:@"string B and"];
        if (substr.location != NSNotFound) {
            [mstr deleteCharactersInRange: substr];
            NSLog(@"%@", mstr);
        }
        
        // setting mutable string
        [mstr setString:@"This is string A"];
        NSLog(@"%@", mstr);
        
        // replace certain range with string
        [mstr replaceCharactersInRange:NSMakeRange(8, 8) withString:@"a mutable string"];
        NSLog(@"%@", mstr);
        
        // search and replacement
        search = @"This is";
        replace = @"An example of";
        
        substr = [mstr rangeOfString: search];
        
        if (substr.location != NSNotFound) {
            [mstr replaceCharactersInRange:substr withString:replace];
        }
        NSLog(@"%@", mstr);
        
        // find all and replacement
        search = @"a";
        replace = @"X";
        
        substr = [mstr rangeOfString: search];
        
        while (substr.location != NSNotFound) {
            [mstr replaceCharactersInRange:substr withString:replace];
            substr = [mstr rangeOfString: search];
        }
        
        NSLog(@"%@", mstr);
    }
    return 0;
}

