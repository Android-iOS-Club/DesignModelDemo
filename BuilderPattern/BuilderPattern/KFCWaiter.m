//
//  KFCWaiter.m
//  BuilderPattern
//
//  Created by bytedance on 12/3/21.
//

#import "KFCWaiter.h"
@interface KFCWaiter()
@property (nonatomic, strong) id<KFCMealBuilder> builder;
@end

@implementation KFCWaiter
- (void)construct:(id<KFCMealBuilder>)builder {
    self.builder = builder;
    [self.builder builderFood];
    [self.builder builderDrink];
}
@end
