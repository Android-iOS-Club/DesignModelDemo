//
//  AfternoonState.m
//  StateModel
//
//  Created by Sharker on 2021/10/17.
//

#import "AfternoonState.h"
#import "Work.h"
#import "EveningState.h"

@implementation AfternoonState
- (void)writeProgram:(Work *)work {
    if (work.hour.intValue < 17) {
        NSLog(@"当前时间%d 下午状态还不错 继续努力", work.hour.intValue);
    } else {
        [work setState:[EveningState new]];
        [work writeProgram];
    }
}
@end
