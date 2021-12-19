//
//  Person.h
//  DecoratorDemo
//
//  Created by Sharker on 2021/10/11.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
- (void)setName:(NSString *)name;
- (NSString *)name;
- (void)show;
@end

NS_ASSUME_NONNULL_END
