//
//  CashContext.h
//  2.策略模式
//
//  Created by N-X on 2018/8/20.
//  Copyright © 2018年 Marauder. All rights reserved.
//

#import <Foundation/Foundation.h>
@class CashSuper;

@interface CashContext : NSObject
- (instancetype)initWithCashSuper:(CashSuper *)cs;
- (double)getResultWithMoney:(double)money;
@end
