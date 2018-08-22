//
//  CashReturn.h
//  2.策略模式
//
//  Created by N-X on 2018/8/20.
//  Copyright © 2018年 Marauder. All rights reserved.
//

#import "CashSuper.h"

@interface CashReturn : CashSuper
- (instancetype)initWithReturnCondition:(double)condition returnMoney:(double)returnMoney;
@end
