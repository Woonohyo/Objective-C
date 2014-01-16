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
        NSString        *fName = @"path.m";
        NSFileManager   *fm;
        NSString        *path, *tempdir, *extension, *homedir, *fullpath;
        NSArray         *components;
        
        fm = [NSFileManager defaultManager];
        
        // get temporary working directory
        
        tempdir = NSTemporaryDirectory();
        
        NSLog(@"Temporary Directory is %@", tempdir);
        
        // Get basic directory from current directory.
        path = [fm currentDirectoryPath];
        NSLog(@"Base dir is %@", [path lastPathComponent]);
        
        // generating full path of fName of current directory
        
        fullpath = [path stringByAppendingPathComponent: fName];
        NSLog(@"fullpath to %@ is %@", fName, fullpath);
        
        // getting extension of file
        extension = [fullpath pathExtension];
        NSLog(@"extension for %@ is %@", fullpath, extension);
        
        // getting home directory of user
        homedir = NSHomeDirectory();
        NSLog(@"Your home directory is %@", homedir);
        
        // separate paths by each compoenent.
        components = [homedir pathComponents];
        
        for (path in components)
            NSLog(@"%@", path);
        
          }
    return 0;
}