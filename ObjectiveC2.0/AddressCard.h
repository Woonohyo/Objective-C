//
//  AddressCard.h
//  ObjectiveC2.0
//
//  Created by Wonhyo Yi on 2014. 1. 14..
//  Copyright (c) 2014년 LinePlus. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressCard : NSObject

// copy = 세터 메서드에서 인스턴스 변수의 사본을 만들라는 의미.
// (기본 속성은 단순하게 대입하는 assign. 부적절함)
// nonatomic = 다중 스레드에서 동시에 한 인스턴스에 접근하려 할 때
// 발생할 수 있는 경쟁조건에 대해 걱정할 필요가 없다고 지시.
@property (copy, nonatomic) NSString *name, *email;
- (void) print;
- (void) setName:(NSString *) theName andEmail:(NSString *) theEmail;
- (NSComparisonResult) compareNames: (id) element;
- (void) assignName: (NSString *) theName andEmail: (NSString *) theEmail;
@end
