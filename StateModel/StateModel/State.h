//
//  State.h
//  StateModel
//
//  Created by Sharker on 2021/10/17.
//

#import <Foundation/Foundation.h>
#import "WorkState.h"
NS_ASSUME_NONNULL_BEGIN

@interface State : NSObject<WorkState>
@property (nonatomic, copy) NSString *name;
@end

NS_ASSUME_NONNULL_END
