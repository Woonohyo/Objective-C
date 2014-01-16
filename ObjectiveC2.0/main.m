//
//  main.m
//  ObjectiveC2.0
//
//  Created by LinePlus on 2014. 1. 13..
//  Copyright (c) 2014년 LinePlus. All rights reserved.
//

#import <Foundation/Foundation.h>

#define PATH @"/Users/lineplus/Documents/Objective-C/ObjectiveC2.0/"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        NSFileManager       *fm;
        NSData              *fileData;
        
        fm = [NSFileManager defaultManager];
        
        // Reading newfile2
        
        fileData = [fm contentsAtPath:@"/Users/lineplus/Documents/Objective-C/ObjectiveC2.0/newfile2"];
        
        if (fileData == nil) {
            NSLog(@"File read failed");
            return 1;
        }
        
        // recording data to newfile3
        
        if ([fm createFileAtPath:@"/Users/lineplus/Documents/Objective-C/ObjectiveC2.0/newfile3" contents:fileData attributes: nil] == NO) {
            NSLog(@"Couldn't create the copy!");
            return 2;
        }
        
        NSLog(@"File copy was successful!");
    }
    return 0;
}