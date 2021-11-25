//
//  SubFactory.m
//  Factory Method Pattern
//
//  Created by Sharker on 2021/11/25.
//

#import "SubFactory.h"
#import "../Product/SubOperation.h"
@implementation SubFactory
- (Product *)createProduct {
    return [SubOperation new];
}
@end
