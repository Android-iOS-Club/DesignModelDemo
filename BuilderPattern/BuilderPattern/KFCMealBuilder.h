//
//  KFCMealBuilder.h
//  BuilderPattern
//
//  Created by bytedance on 12/5/21.
//

#import <Foundation/Foundation.h>
#import "KFCMeal.h"

@protocol KFCMealBuilder <NSObject>
- (void)builderDrink;
- (void)builderFood;
- (KFCMeal *)getMeal; 

@end
