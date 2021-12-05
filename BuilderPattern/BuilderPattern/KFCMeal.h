//
//  KFCMeal.h
//  BuilderPattern
//
//  Created by bytedance on 12/3/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface KFCMeal : NSObject
@property (nonatomic, copy) NSString *mealName;
@property (nonatomic, copy) NSString *food;
@property (nonatomic, copy) NSString *drink;

- (NSString *)getDrink;
- (NSString *)getFood;
- (void)setDrink:(NSString *)drink;
- (void)setFood:(NSString *)food;
@end

NS_ASSUME_NONNULL_END
