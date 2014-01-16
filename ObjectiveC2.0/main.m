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
        NSString                *fName = @"/Users/lineplus/Documents/Objective-C/ObjectiveC2.0/testfile";
        NSFileManager           *fm;
        NSDictionary            *attr;
        
        // Generating instance of fileManager
        fm = [NSFileManager defaultManager];
        
        // check the existency of testfile
        if([fm fileExistsAtPath: fName] == NO) {
            NSLog(@"File doesn't exist!");
            return 1;
        }
        
        // Copying the file
        if ([fm copyItemAtPath: fName toPath: @"newfile" error: NULL] == NO) {
            NSLog(@"File Copy Failed");
            return 2;
        }
        
        // Comparing copied one to original one.
        if ([fm contentsEqualAtPath: fName andPath: @"newfile"] == NO) {
            NSLog(@"Files are not Equal");
            return 3;
        }
        
        // rename copied one.
        if ([fm moveItemAtPath:@"newfile" toPath:@"newfile2" error:NULL] == NO) {
            NSLog(@"File rename Failed");
            return 4;
        }
        
        // get file size of newfile2
        if ((attr = [fm attributesOfItemAtPath:@"newfile2" error:NULL]) == nil) {
            NSLog(@"Couldn't get file attributes!");
            return 5;
        }
        
        NSLog(@"File size is %llu bytes", [[attr objectForKey: NSFileSize] unsignedLongLongValue]);
        
        // Delete original one
        
        if ([fm removeItemAtPath:fName error:NULL] == NO) {
            NSLog(@"file removal failed");
            return 6;
        }
        
        NSLog(@"All operations were successful!");
        
        NSLog(@"%@", [NSString stringWithContentsOfFile:@"newfile2" encoding:NSUTF8StringEncoding error:NULL]);
        
    }
    return 0;
}