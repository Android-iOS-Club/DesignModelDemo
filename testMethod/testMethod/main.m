//
//  main.m
//  testMethod
//
//  Created by Sharker on 2021/11/5.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import <objc/runtime.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *person = [Person new];
        [person performSelector:@selector(testMethod)];

    }
    return 0;
}
