//
//  Robot.m
//  DecoratorDemo
//
//  Created by bytedance on 12/19/21.
//

#import "Robot.h"

@implementation Robot
- (void)move {
    [super move];
    NSLog(@"变成机器人行走");
    [self say];
}

- (void)say {
    NSLog(@"站着唱歌");
}
@end
