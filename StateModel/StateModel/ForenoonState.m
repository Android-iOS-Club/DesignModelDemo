//
//  ForenoonState.m
//  StateModel
//
//  Created by Sharker on 2021/10/17.
//

#import "ForenoonState.h"
#import "Work.h"
#import "NoonState.h"
@implementation ForenoonState

- (void)writeProgram:(Work *)work {
    if (work.hour.intValue < 12) {
        NSLog(@"当前时间%d点 上午工作 精神百倍", work.hour.intValue);
    } else { // 状态流转
        [work setState:[NoonState new]];
        [work writeProgram];
    }
}
@end
