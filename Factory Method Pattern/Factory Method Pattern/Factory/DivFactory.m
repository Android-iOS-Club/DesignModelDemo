//
//  DivFactory.m
//  Factory Method Pattern
//
//  Created by Sharker on 2021/11/25.
//

#import "DivFactory.h"
#import "../Product/DivOperation.h"
@implementation DivFactory
- (Product *)createProduct {
    return [DivOperation new];
}
@end
