//
//  Changer.h
//  DecoratorDemo
//
//  Created by bytedance on 12/19/21.
//

#import "Transfrom.h"

NS_ASSUME_NONNULL_BEGIN
@class Transfrom;
/// Dectorator
@interface Changer : Transfrom
- (void)changeTransformman:(Transfrom *)transfrom;
@end

NS_ASSUME_NONNULL_END
