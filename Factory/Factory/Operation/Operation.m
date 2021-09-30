//
//  Operation.m
//  Factory
//
//  Created by Sharker on 2021/9/18.
//

#import "Operation.h"

@implementation Operation
- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (void)setNumberA:(NSNumber *)number {
    _numberA = number;
}

- (void)setNumberB:(NSNumber *)number {
    _numberB = number;
}

- (NSNumber *)result {
    return [NSNumber new];
}

@end
