//
//  AddOperation.m
//  Factory
//
//  Created by Sharker on 2021/9/18.
//

#import "AddOperation.h"

@implementation AddOperation

- (NSNumber *)result {
    NSNumber *number = [[NSNumber alloc] init];
    double sum = self.numberA.doubleValue + self.numberB.doubleValue;
    number = [NSNumber numberWithDouble:sum];
    return number;
}

@end
