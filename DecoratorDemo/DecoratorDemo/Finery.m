//
//  Finery.m
//  DecoratorDemo
//
//  Created by Sharker on 2021/10/11.
//

#import "Finery.h"
#import "Person.h"

@interface Finery()
@property (nonatomic, strong) Person *component;
@end
@implementation Finery

- (void)decorator:(Person *)component {
    self.component = component;
}
// 重写父类方法
- (void)show {
    if (self.component) {
        [self.component show]; // 实际调用的是component的show方法
    }
}
@end
