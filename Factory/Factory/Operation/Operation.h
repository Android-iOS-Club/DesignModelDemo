//
//  Operation.h
//  Factory
//
//  Created by Sharker on 2021/9/18.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/// 抽象类
@interface Operation : NSObject
@property (nonatomic, strong, readonly) NSNumber *numberA;
@property (nonatomic, strong, readonly) NSNumber *numberB;

- (NSNumber *)result;
- (void)setNumberA:(NSNumber *)number;
- (void)setNumberB:(NSNumber *)number;
@end

NS_ASSUME_NONNULL_END
