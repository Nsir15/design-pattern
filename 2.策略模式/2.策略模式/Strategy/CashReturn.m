//
//  CashReturn.m
//  2.策略模式
//
//  Created by N-X on 2018/8/20.
//  Copyright © 2018年 Marauder. All rights reserved.
//

#import "CashReturn.h"
@interface CashReturn()
@property(nonatomic,assign)double condition;
@property(nonatomic,assign)double returnMoney;
@end

@implementation CashReturn
- (instancetype)initWithReturnCondition:(double)condition returnMoney:(double)returnMoney
{
    if(self = [super init])
    {
        _condition = condition;
        _returnMoney = returnMoney;
    }
    return self;
}

- (double)acceptCash:(double)acceptCash
{
    return  acceptCash -  floor(acceptCash / self.condition) * self.returnMoney;
}

@end
