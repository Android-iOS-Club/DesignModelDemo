//
//  StrategyA.m
//  StrategyDesignDemo
//
//  Created by Sharker on 2021/9/30.
//

#import "StrategyA.h"

@implementation StrategyA
- (NSNumber *)acceptCrash:(NSNumber *)price{
    NSNumber *resultPrice = price;
    // 满减
    double priceNum = price.doubleValue;
    if (priceNum > 300) {
        priceNum -= 50;
        resultPrice = [NSNumber numberWithDouble:priceNum];
    }
    return resultPrice;
}
@end
