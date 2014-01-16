//
//  main.m
//  ObjectiveC2.0
//
//  Created by Woonohyo on 2014. 1. 13..
//  Copyright (c) 2014년 Woonohyo. All rights reserved.
//
// Basic Directory Operation

#import <Foundation/Foundation.h>

#define PATH @"/Users/lineplus/Documents/Objective-C/ObjectiveC2.0/"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        NSString        *dirName = @"/Users/lineplus/Documents/Objective-C/ObjectiveC2.0/testdir";
        NSString        *path;
        NSFileManager   *fm;
        
        // creating an instance of filemanager
        
        fm = [NSFileManager defaultManager];
        
        // get current directory
        
        path = [fm currentDirectoryPath];
        NSLog(@"Current directory path is %@", path);
        
        // make new directory
        
        if ([fm createDirectoryAtPath:dirName withIntermediateDirectories: YES attributes: nil error: NULL] == NO) {
            NSLog(@"Couldn't create directory1");
            return 1;
        }
        
        // rename new directory
        
        if ([fm moveItemAtPath: dirName toPath: @"/Users/lineplus/Documents/Objective-C/ObjectiveC2.0/newdir" error: NULL] == NO) {
            NSLog(@"Directory rename failed!");
            return 2;
        }
        
        // move current directory to new directory
        
        if ([fm changeCurrentDirectoryPath: @"/Users/lineplus/Documents/Objective-C/ObjectiveC2.0/newdir"] == NO) {
            NSLog(@"change directory failed!");
            return 3;
        }
        
        // print to console current directory
        path = [fm currentDirectoryPath];
        NSLog(@"Current directory path is %@", path);
        
        NSLog(@"ALl operations were successful!");
          }
    return 0;
}