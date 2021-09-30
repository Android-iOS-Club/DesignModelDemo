//
//  ChooseStrategy.m
//  StrategyDesignDemo
//
//  Created by Sharker on 2021/9/30.
//

#import "ChooseStrategyManager.h"
#import "Strategy.h"
#import "StrategyA.h"
#import "StrategyB.h"
#import "StrategyC.h"

@interface ChooseStrategyManager()
@property (nonatomic, strong) Strategy *strategy;
@end

@implementation ChooseStrategyManager
- (void)chooseStarategyWithStrategy:(SDDStrategy)strategy {
    NSException *exception = [[NSException alloc] initWithName:NSExtensionItemAttachmentsKey reason:@"类型错误" userInfo:nil];
    switch (strategy) {
        case SDDStrategyA:
            self.strategy = [[StrategyA alloc] init];
            break;
        case SDDStrategyB:
            self.strategy = [[StrategyB alloc] init];
            break;
        case SDDStrategyC:
            self.strategy = [[StrategyC alloc] init];
            break;
        default:
            @throw exception;
            break;
    }
}

- (NSUInteger)strartegyCount {
    return 3;
}

- (NSArray<NSString *> *)strartegyNames {
    return @[@"满减", @"8折", @"正常价格"];
}

- (NSNumber *)acceptCrash:(NSNumber *)price {
    return [self.strategy acceptCrash:price];
}
    

@end
