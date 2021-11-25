//
//  main.m
//  Factory Method Pattern
//
//  Created by Sharker on 2021/11/25.
//

#import <Foundation/Foundation.h>
#import "Factory/Factory.h"
#import "Product/Product.h"
#import "Factory/AddFactory.h"
#import "Factory/MultiFactory.h"
#import "Factory/SubFactory.h"
#import "Factory/DivFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        DivFactory *factory = [DivFactory new]; 
        Product *addOperation = [factory createProduct]; // 多态性的利用
        addOperation.operationNumberA = [NSNumber numberWithInt:1];
        addOperation.operationNumberB = [NSNumber numberWithInt:2];
        NSNumber *ans = [addOperation result];
        NSLog(@"%@", ans);
    }
    return 0;
}
