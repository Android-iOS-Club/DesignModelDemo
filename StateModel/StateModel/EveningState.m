//
//  EveningState.m
//  StateModel
//
//  Created by Sharker on 2021/10/17.
//

#import "EveningState.h"
#import "Work.h"
#import "SleepingState.h"
#import "RestState.h"
@implementation EveningState
- (void)writeProgram:(Work *)work {
    if (work.finished) {
        NSLog(@"工作完成休息");
        [work setState:[RestState new]];
        [work writeProgram];
    } else {
        if (work.hour.intValue < 21) {
            NSLog(@"当前时间%d 还在加班", work.hour.intValue);
        } else {
            [work setState:[SleepingState new]];
            [work writeProgram];
        }
    }
}
@end
