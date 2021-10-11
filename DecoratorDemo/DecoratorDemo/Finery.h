//
//  Finery.h
//  DecoratorDemo
//
//  Created by Sharker on 2021/10/11.
//  Decorator 装饰类

#import "Person.h"

NS_ASSUME_NONNULL_BEGIN
@class Person;
@interface Finery : Person
- (void)decorator:(Person *)component;
@end

NS_ASSUME_NONNULL_END
