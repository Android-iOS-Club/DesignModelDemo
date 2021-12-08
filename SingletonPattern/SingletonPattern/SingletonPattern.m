//
//  SingletonPattern.m
//  SingletonPattern
//
//  Created by bytedance on 12/7/21.
//

#import "SingletonPattern.h"

@implementation SingletonPattern

+ (instancetype)sharedInstance {
    static SingletonPattern *singleton = nil;
    static dispatch_once_t token;
    dispatch_once(&token, ^{
        singleton = [[super allocWithZone:nil] init];
    });
    return singleton;
}

+ (id)allocWithZone:(NSZone *)zone{
    return [self sharedInstance];
}
- (id)copyWithZone:(NSZone *)zone{
    return [[self class] sharedInstance];
}
- (id)mutableCopyWithZone:(NSZone *)zone{
    return [[self class] sharedInstance];
}



@end
