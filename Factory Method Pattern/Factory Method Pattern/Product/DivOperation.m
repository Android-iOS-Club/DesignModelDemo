//
//  DivOperation.m
//  Factory Method Pattern
//
//  Created by Sharker on 2021/11/25.
//

#import "DivOperation.h"

@implementation DivOperation
- (NSNumber *)result {
    NSAssert(self.operationNumberB.floatValue != 0.f, @"除数不为0");
    CGFloat ans = self.operationNumberA.floatValue / self.operationNumberB.floatValue;
    return [NSNumber numberWithFloat:ans];
}
@end
