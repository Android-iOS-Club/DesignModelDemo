//
//  SleepingState.m
//  StateModel
//
//  Created by Sharker on 2021/10/17.
//

#import "SleepingState.h"
#import "Work.h"
#import "RestState.h"

@implementation SleepingState
- (void)writeProgram:(Work *)work {
    NSLog(@"当前时间%d 我尼玛还在coding 睡觉了受不了拉", work.hour.intValue);
}
@end
