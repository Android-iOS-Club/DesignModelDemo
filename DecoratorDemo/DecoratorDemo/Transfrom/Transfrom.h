//
//  Transfrom.h
//  DecoratorDemo
//
//  Created by bytedance on 12/19/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
// Component
@interface Transfrom : NSObject
@property (nonatomic, copy) NSString *name;
- (void)move;
@end

NS_ASSUME_NONNULL_END
