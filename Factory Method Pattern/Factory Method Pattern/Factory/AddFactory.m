//
//  AddFactory.m
//  Factory Method Pattern
//
//  Created by Sharker on 2021/11/25.
//

#import "AddFactory.h"
#import "../Product/AddOperation.h"

@implementation AddFactory
- (Product *)createProduct {
    return [AddOperation new];
}
@end
