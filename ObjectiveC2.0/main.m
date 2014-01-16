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
        NSFileHandle        *inFile, *outFile;
        NSData        *buffer;
        
        // open the fileA for reading
        
        inFile = [NSFileHandle fileHandleForReadingAtPath:@"/Users/lineplus/Documents/Objective-C/ObjectiveC2.0/fileA"];
        
        if (inFile == nil) {
            NSLog(@"Open of fileA for reading failed");
            return 1;
        }
        
        // open the fileB for updating
        
        outFile = [NSFileHandle fileHandleForUpdatingAtPath:@"/Users/lineplus/Documents/Objective-C/ObjectiveC2.0/fileB"];
        
        if (outFile == nil) {
            NSLog(@"Open of fileB for writing failed");
            return 2;
        }
        
        // Seek to the end of outFile
        [outFile seekToEndOfFile];
        
        // read inFile and write its contents to outFile.
        buffer = [inFile readDataToEndOfFile];
        [outFile writeData: buffer];
        
        // Close the two files
        [inFile closeFile];
        [outFile closeFile];
        
        // verify its contents.
        
        NSLog(@"%@", [NSString stringWithContentsOfFile: @"/Users/lineplus/Documents/Objective-C/ObjectiveC2.0/fileB" encoding: NSUTF8StringEncoding error: NULL]);
    }
    return 0;
}