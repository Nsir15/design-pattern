//
//  OperationFactory.h
//  01计算器
//
//  Created by N-X on 2018/8/17.
//  Copyright © 2018年 Marauder. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Operation.h"

@interface OperationFactory : NSObject
+ (Operation *)createOperationWithOPerate:(NSString *)operate;
@end
