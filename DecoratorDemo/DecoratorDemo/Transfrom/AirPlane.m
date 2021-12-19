//
//  AirPlane.m
//  DecoratorDemo
//
//  Created by bytedance on 12/19/21.
//

#import "AirPlane.h"

@implementation AirPlane
- (void)move {
    [super move];    
    NSLog(@"编程飞机 弹射起步");
    [self flying];
}

- (void)flying {
    NSLog(@"飞行");
}
@end
