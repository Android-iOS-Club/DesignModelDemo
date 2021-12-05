//
//  KFCMeal.m
//  BuilderPattern
//
//  Created by bytedance on 12/3/21.
//

#import "KFCMeal.h"

@implementation KFCMeal
@synthesize drink = _drink, food = _food;
- (void)setDrink:(NSString *)drink {
    _drink = drink;
}
- (void)setFood:(NSString *)food {
    _food = food;
}
- (NSString *)getFood {
    return _food;
}
- (NSString *)getDrink {
    return _drink;
}
@end
