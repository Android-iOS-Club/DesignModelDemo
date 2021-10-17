//
//  Work.h
//  StateModel
//
//  Created by Sharker on 2021/10/17.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class State;
@interface Work : NSObject
@property (nonatomic, strong) NSNumber *hour; // 状态切换的依据
@property (nonatomic, assign) BOOL finished;
- (void)setState:(State *)state; // 状态切换
// 主要行为方法
- (void)writeProgram;
@end

NS_ASSUME_NONNULL_END
