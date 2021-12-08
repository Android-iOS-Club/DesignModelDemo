//
//  main.m
//  SingletonPattern
//
//  Created by bytedance on 12/7/21.
//

#import <Foundation/Foundation.h>
#import "SingletonPattern.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        SingletonPattern *single = [SingletonPattern new];
        SingletonPattern *single1 = [SingletonPattern sharedInstance];
        if (single == single1) {
            NSLog(@"equal");
        } else {
            NSLog(@"no equal");
        }
    }
    return 0;
}
