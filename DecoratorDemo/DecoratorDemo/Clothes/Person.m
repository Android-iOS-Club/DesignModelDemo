//
//  Person.m
//  DecoratorDemo
//
//  Created by Sharker on 2021/10/11.
//  ConcreteComponent 具体的Component类

#import "Person.h"

@interface Person()
@property (nonatomic, strong) NSString *name;
@end

@implementation Person
@synthesize name = _name;

- (void)setName:(NSString *)name {
    _name = name;
}

- (NSString *)name {
    return _name;
}

- (void)show {
    NSLog(@"装扮的%@", self.name);
}
@end
