//
//  WorkState.h
//  StateModel
//
//  Created by Sharker on 2021/10/17.
//  使用协议定义抽象方法 替换继承实现

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class Work;
@protocol WorkState <NSObject>
- (void)writeProgram:(Work *)work;
@end

NS_ASSUME_NONNULL_END
