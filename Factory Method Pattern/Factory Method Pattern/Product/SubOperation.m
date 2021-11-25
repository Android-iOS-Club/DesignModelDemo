//
//  SubOperation.m
//  Factory Method Pattern
//
//  Created by Sharker on 2021/11/25.
//

#import "SubOperation.h"

@implementation SubOperation
- (NSNumber *)result {
    CGFloat ans = self.operationNumberA.floatValue - self.operationNumberB.floatValue;
    return [NSNumber numberWithFloat:ans];
}

@end
