//
//  Work.m
//  StateModel
//
//  Created by Sharker on 2021/10/17.
//

#import "Work.h"
#import "State.h"
#import "ForenoonState.h"
@interface Work()
@property (nonatomic, strong) State *currentState;

@end

@implementation Work
- (instancetype)init {
    if (self = [super init]) {
        _currentState = [ForenoonState new];
    }
    return self;
}
- (void)setState:(State *)state {
    _currentState = state;
}

- (void)writeProgram {
    // 没有循环引用
    [self.currentState writeProgram:self];
}
@end
