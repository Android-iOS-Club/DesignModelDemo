//
//  SingletonPattern.h
//  SingletonPattern
//
//  Created by bytedance on 12/7/21.
//  单例类

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SingletonPattern : NSObject
+ (instancetype)sharedInstance;

@end

NS_ASSUME_NONNULL_END
