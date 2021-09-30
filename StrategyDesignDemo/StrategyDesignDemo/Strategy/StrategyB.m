//
//  StrategyB.m
//  StrategyDesignDemo
//
//  Created by Sharker on 2021/9/30.
//

#import "StrategyB.h"

@implementation StrategyB

- (NSNumber *)acceptCrash:(NSNumber *)price {
    double priceNum = price.doubleValue;
    // 8折
    NSNumber *resultPrice = [NSNumber numberWithDouble:(priceNum * 0.8)];
    return resultPrice;
}
@end
