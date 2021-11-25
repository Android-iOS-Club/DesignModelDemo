//
//  Factory.h
//  Factory Method Pattern
//
//  Created by Sharker on 2021/11/25.
//

#import <Foundation/Foundation.h>
#import "Product.h"
NS_ASSUME_NONNULL_BEGIN

@protocol Factory <NSObject>
- (Product *)createProduct;
@end

NS_ASSUME_NONNULL_END
