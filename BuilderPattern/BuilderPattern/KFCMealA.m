//
//  KFCMealA.m
//  BuilderPattern
//
//  Created by bytedance on 12/3/21.
//

#import "KFCMealA.h"

@implementation KFCMealA
- (instancetype)init {
    if (self = [super init]) {
        self.mealName = @"套餐A";
    }
    return self;
}

- (void)builderFood {
    self.food = @"新奥尔良鸡肉堡";
}

- (void)builderDrink {
    self.drink = @"雪碧";
}

- (KFCMeal *)getMeal {
    return self;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"%@: %@ 饮料: %@", self.mealName, [self getFood], [self getDrink]];
}

@end
