//
//  MulOperation.m
//  Factory
//
//  Created by Sharker on 2021/9/18.
//

#import "MulOperation.h"

@implementation MulOperation
- (NSNumber *)result {
    NSNumber *number = [[NSNumber alloc] init];
    double mul = self.numberA.doubleValue * self.numberB.doubleValue;
    number = [NSNumber numberWithDouble:mul];
    return number;
}
@end
