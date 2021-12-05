//
//  KFCMealB.m
//  BuilderPattern
//
//  Created by bytedance on 12/3/21.
//

#import "KFCMealB.h"

@implementation KFCMealB
- (instancetype)init {
    if (self = [super init]) {
        self.mealName = @"套餐B";
    }
    return self;
}

- (void)builderFood {
    self.food = @"香辣鸡腿堡";
}
- (void)builderDrink {
    self.drink = @"可乐";
}

- (KFCMeal *)getMeal {
    return self;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"%@: %@ 饮料: %@", self.mealName, [self getFood], [self getDrink]];
}

    
@end
