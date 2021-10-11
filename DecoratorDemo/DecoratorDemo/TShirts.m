//
//  TShirts.m
//  DecoratorDemo
//
//  Created by Sharker on 2021/10/11.
//  

#import "TShirts.h"

@implementation TShirts
- (void)show {
    NSLog(@"T恤衫");
    // 子类调用完了 调用父类的show方法 调用是装饰的类的show方法
    [super show];
}

@end
