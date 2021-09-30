//
//  StrategyC.m
//  StrategyDesignDemo
//
//  Created by Sharker on 2021/9/30.
//

#import "StrategyC.h"

@implementation StrategyC
// 正常收费
- (NSNumber *)acceptCrash:(NSNumber *)price {
    return price;
}
@end
