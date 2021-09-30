//
//  SubOperation.m
//  Factory
//
//  Created by Sharker on 2021/9/18.
//

#import "SubOperation.h"

@implementation SubOperation
- (NSNumber *)result {
    NSNumber *number = [[NSNumber alloc] init];
    double sub = self.numberA.doubleValue - self.numberB.doubleValue;
    number = [NSNumber numberWithDouble:sub];
    return number;
}
@end
