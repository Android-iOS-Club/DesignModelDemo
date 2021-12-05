//
//  KFCWaiter.h
//  BuilderPattern
//
//  Created by bytedance on 12/3/21.
//

#import <Foundation/Foundation.h>
#import "KFCMealBuilder.h"
NS_ASSUME_NONNULL_BEGIN

@interface KFCWaiter : NSObject
- (void)construct:(id<KFCMealBuilder>)builder;
@end

NS_ASSUME_NONNULL_END
