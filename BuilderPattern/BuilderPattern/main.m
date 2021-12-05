//
//  main.m
//  BuilderPattern
//
//  Created by bytedance on 12/3/21.
//

#import <Foundation/Foundation.h>
#import "KFCMealBuilder.h"
#import "KFCWaiter.h"
#import "KFCMealA.h"
#import "KFCMealB.h"
#import "KFCMeal.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 将复杂对象的建造和使用分离开来 解除耦合
        KFCWaiter *waiter = [KFCWaiter new]; // 指挥类 隔离客户与生产过程
        KFCMealA *mealA = [KFCMealA new]; // 具体建造者类
        [waiter construct:mealA]; // 针对构建抽象构建者类进行创建
        NSLog(@"%@", [mealA getMeal]); // 建造完成
        
        // 同样的建造方式可以构建不同的表示
        KFCMealB *mealB = [KFCMealB new];
        [waiter construct:mealB];
        NSLog(@"%@", [mealB getMeal]);
        
    }
    return 0;
}
