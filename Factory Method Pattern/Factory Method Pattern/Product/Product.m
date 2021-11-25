//
//  Product.m
//  Factory Method Pattern
//
//  Created by Sharker on 2021/11/25.
//

#import "Product.h"

@implementation Product
- (NSNumber *)result {
    NSAssert(YES, @"子类重写此方法");
    return nil;
}
@end
