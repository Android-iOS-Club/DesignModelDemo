//
//  OperationFactory.h
//  Factory
//
//  Created by Sharker on 2021/9/18.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class Operation;
@interface OperationFactory : NSObject
+ (Operation *)creatOperationWithSymbol:(NSString *)operation;
@end

NS_ASSUME_NONNULL_END
