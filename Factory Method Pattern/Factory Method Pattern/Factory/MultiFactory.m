//
//  MultiFactory.m
//  Factory Method Pattern
//
//  Created by Sharker on 2021/11/25.
//

#import "MultiFactory.h"
#import "../Product/MultiOperation.h"
@implementation MultiFactory
- (Product *)createProduct {
    return [MultiOperation new];
}
@end
