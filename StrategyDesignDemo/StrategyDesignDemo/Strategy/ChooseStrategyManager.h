//
//  ChooseStrategy.h
//  StrategyDesignDemo
//
//  Created by Sharker on 2021/9/30.
//

#import <Foundation/Foundation.h>
typedef NS_ENUM(NSUInteger, SDDStrategy) {
    SDDStrategyA = 0,
    SDDStrategyB,
    SDDStrategyC,
};

NS_ASSUME_NONNULL_BEGIN

@interface ChooseStrategyManager : NSObject
- (void)chooseStarategyWithStrategy:(SDDStrategy)strategy;
- (NSUInteger)strartegyCount;
- (NSArray<NSString *> *)strartegyNames;
- (NSNumber *)acceptCrash:(NSNumber *)price;
@end

NS_ASSUME_NONNULL_END
