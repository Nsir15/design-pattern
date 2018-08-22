//
//  CashRebate.h
//  2.策略模式
//
//  Created by N-X on 2018/8/20.
//  Copyright © 2018年 Marauder. All rights reserved.
//  打折

#import "CashSuper.h"

@interface CashRebate : CashSuper
- (instancetype)initWithRebate:(double)rebate;
@end
