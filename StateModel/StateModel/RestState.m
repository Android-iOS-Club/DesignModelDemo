//
//  RestState.m
//  StateModel
//
//  Created by Sharker on 2021/10/17.
//

#import "RestState.h"
#import "Work.h"

@implementation RestState
- (void)writeProgram:(Work *)work {
    NSLog(@"当前时间%d 完事咯 下班写自己的代码", work.hour.intValue);
}
@end
