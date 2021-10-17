//
//  NoonState.m
//  StateModel
//
//  Created by Sharker on 2021/10/17.
//

#import "NoonState.h"
#import "Work.h"
#import "AfternoonState.h"

@implementation NoonState
- (void)writeProgram:(Work *)work {
    if (work.hour.intValue < 13) {
        NSLog(@"当前时间%d 饿了 午饭 睡觉", work.hour.intValue);
    } else {
        [work setState:[AfternoonState new]];
        [work writeProgram];
    }
}
@end
