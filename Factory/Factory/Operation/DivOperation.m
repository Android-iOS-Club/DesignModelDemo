//
//  DivOperation.m
//  Factory
//
//  Created by Sharker on 2021/9/18.
//

#import "DivOperation.h"

@implementation DivOperation
- (NSNumber *)result {
    NSNumber *number = [[NSNumber alloc] init];
    double div = self.numberA.doubleValue / self.numberB.doubleValue;
    number = [NSNumber numberWithDouble:div];
    
    return number;
}

- (void)setNumberB:(NSNumber *)number {
    if (number.doubleValue == 0) {
        NSException *exception = [[NSException alloc] initWithName:NSInvalidArgumentException reason:@"除数为0" userInfo:nil];
        [exception raise];
    }
    [super setNumberB:number];
}

@end
