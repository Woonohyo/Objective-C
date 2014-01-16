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
        NSString                *path;
        NSFileManager           *fm;
        NSDirectoryEnumerator   *dirEnum;
        NSArray                 *dirArray;
        
        // instancize FileManager
        
        fm = [NSFileManager defaultManager];
        
        // receiving current working directory
        
        path = [fm currentDirectoryPath];
        
        // enumerating directories
        
        dirEnum = [fm enumeratorAtPath: path];
        
        NSLog(@"Contents of %@", path);
        
        while ((path = [dirEnum nextObject]) != nil)
            NSLog(@"%@", path);
        
        //another way of enumerating
        
        dirArray = [fm contentsOfDirectoryAtPath: [fm currentDirectoryPath] error: NULL];
        NSLog(@"Contents using contentsOfDirectoryAtAPath:error:");
        
        for( path in dirArray)
            NSLog(@"%@", path);
          }
    return 0;
}