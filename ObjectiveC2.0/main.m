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
        NSData              *buffer;
        
        //open testfile for reading
        
        inFile = [NSFileHandle fileHandleForReadingAtPath:@"/Users/lineplus/Documents/Objective-C/ObjectiveC2.0/testfile"];
        
        if (inFile == nil) {
            NSLog(@"Open of testfile for reading failed");
            return 1;
        }
        
        // create output file if required.
        [[NSFileManager defaultManager] createFileAtPath:@"/Users/lineplus/Documents/Objective-C/ObjectiveC2.0/testout" contents: nil attributes: nil];
        
        // open outfile for writing
        
        outFile  = [NSFileHandle fileHandleForWritingAtPath:@"/Users/lineplus/Documents/Objective-C/ObjectiveC2.0/testout"];
        
        if (outFile == nil) {
            NSLog(@"Open of testout for writing failed");
            return 2;
        }
        
        // Truncate output file since it may contain data
        
        [outFile truncateFileAtOffset: 0];
        
        // Read the data from infile and write it to outfile
        
        buffer = [inFile readDataToEndOfFile];
        
        [outFile writeData: buffer];
        
        // Close the two files
        [inFile closeFile];
        [outFile closeFile];
        
        // Verify file's contents
        NSLog(@"%@", [NSString stringWithContentsOfFile: @"/Users/lineplus/Documents/Objective-C/ObjectiveC2.0/testout" encoding: NSUTF8StringEncoding error: NULL]);
    }
    return 0;
}