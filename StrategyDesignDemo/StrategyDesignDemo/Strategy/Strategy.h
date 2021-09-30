//
//  Strategy.h
//  StrategyDesignDemo
//
//  Created by Sharker on 2021/9/30.
//  抽象虚基类

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Strategy : NSObject
- (NSNumber *)acceptCrash:(NSNumber *)price;
@end

NS_ASSUME_NONNULL_END
