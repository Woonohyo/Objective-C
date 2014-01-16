//
//  main.m
//  ObjectiveC2.0
//
//  Created by Woonohyo on 2014. 1. 13..
//  Copyright (c) 2014년 Woonohyo. All rights reserved.
//
// Basic Directory Operation

#import <Foundation/Foundation.h>
#import "Fraction.h"
#import "Foo.h"
#import "AddressBook.h"
#define PATH @"/Users/lineplus/Documents/Objective-C/ObjectiveC2.0/"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        Foo                 *myFoo1 = [[Foo alloc] init];
        NSData       *dataArea;
        //NSKeyedArchiver     *archiver;
        NSKeyedUnarchiver   *unarchiver;
        AddressBook         *myBook = [AddressBook alloc];
        /*
        NSString *aName = @"Julia Kochan";
        NSString *aEmail = @"jewls337@axlc.com";
        NSString *bName = @"Tony Iannino";
        NSString *bEmail = @"tony.iannino@techfitness.com";
        NSString *cName = @"Stephen Kochan";
        NSString *cEmail = @"steve@steve_kochan.com";
        NSString *dName = @"Jamie Baker";
        NSString *dEmail = @"jbaker@hitmail.com";
         
        AddressCard *card1 = [[AddressCard alloc] init];
        AddressCard *card2 = [[AddressCard alloc] init];
        AddressCard *card3 = [[AddressCard alloc] init];
        AddressCard *card4 = [[AddressCard alloc] init];
        
       
        // First set up four address cards
        [card1 setName: aName andEmail: aEmail];
        [card2 setName: bName andEmail: bEmail];
        [card3 setName: cName andEmail: cEmail];
        [card4 setName: dName andEmail: dEmail];
        
        myBook = [myBook initWithName: @"Steve'sAddress Book"];
       
        // Add some cards to the address book
        [myBook addCard: card1];
        [myBook addCard: card2];
        [myBook addCard: card3];
        [myBook addCard: card4];
        
        [myFoo1 setStrVal:@"This is string"];
        [myFoo1 setIntVal: 12345];
        [myFoo1 setFloatVal: 98.6];
        */
        //Set up a data area and connect it to an NSKeyedArchiver object
        
        dataArea = [NSData dataWithContentsOfFile: [PATH stringByAppendingString: @"myArchive"]];
        
        if (!dataArea) {
            NSLog(@" Can't read back archive file!");
            return 1;
        }
        
        unarchiver = [[NSKeyedUnarchiver alloc] initForReadingWithData: dataArea];
        
        //archiver = [[NSKeyedArchiver alloc] initForWritingWithMutableData: dataArea];
        
        //Now we can begin to archive objects
        //[archiver encodeObject: myBook forKey: @"myaddrbook"];
        //[archiver encodeObject: myFoo1 forKey: @"myfoo1"];
        
        
        //Decoding the object we previously stored in the archive
        myBook = [unarchiver decodeObjectForKey: @"myaddrbook"];
        myFoo1 = [unarchiver decodeObjectForKey: @"myfoo1"];
        
        // Write the archived data area to a file
//        if ([dataArea writeToFile: [PATH stringByAppendingString: @"myArchive"] atomically: YES] == NO)
//            NSLog(@"archiving failed");
        
        [unarchiver finishDecoding];
        
        
        //Verify that the restore was successful
        [myBook list];
        NSLog(@"%@\n%i\n%g", myFoo1.strVal, myFoo1.intVal, myFoo1.floatVal);
        
        
    }
    return 0;
}