//
//  Product.h
//  Factory Method Pattern
//
//  Created by Sharker on 2021/11/25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Product : NSObject
@property (nonatomic, strong) NSNumber *operationNumberA;
@property (nonatomic, strong) NSNumber *operationNumberB;
- (NSNumber *)result;
@end

NS_ASSUME_NONNULL_END
