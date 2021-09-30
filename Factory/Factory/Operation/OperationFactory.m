//
//  OperationFactory.m
//  Factory
//
//  Created by Sharker on 2021/9/18.
//

#import "OperationFactory.h"
#import "AddOperation.h"
#import "SubOperation.h"
#import "DivOperation.h"
#import "MulOperation.h"

@implementation OperationFactory
- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

+ (Operation *)creatOperationWithSymbol:(NSString *)operation {
    if ([operation isEqualToString:@"+"]) {
        return [[AddOperation alloc] init];
    } else if ([operation isEqualToString:@"-"]) {
        return [[SubOperation alloc] init];
    } else if ([operation isEqualToString:@"*"]) {
        return [[MulOperation alloc] init];
    } else if ([operation isEqualToString:@"/"]) {
        return [[DivOperation alloc] init];
    }
    NSException *exception = [[NSException alloc] initWithName:@"ERROR" reason:@"输入的操作符错误" userInfo:nil];
    [exception raise];
    return nil;
}
@end
