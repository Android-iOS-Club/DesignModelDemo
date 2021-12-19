//
//  Changer.m
//  DecoratorDemo
//
//  Created by bytedance on 12/19/21.
//

#import "Changer.h"
#import "Transfrom.h"
@interface Changer()
@property (nonatomic, strong) Transfrom *transfrom;
@end

@implementation Changer
- (void)changeTransformman:(Transfrom *)transfrom {
    self.transfrom = transfrom;
}

- (void)move {
    if (self.transfrom) {
        // 调用汽车人的move
        [self.transfrom move];
    }
}

@end
