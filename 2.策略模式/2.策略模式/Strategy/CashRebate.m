//
//  CashRebate.m
//  2.策略模式
//
//  Created by N-X on 2018/8/20.
//  Copyright © 2018年 Marauder. All rights reserved.
//

#import "CashRebate.h"
@interface CashRebate()
@property(nonatomic,assign)double rebate;
@end

@implementation CashRebate
- (instancetype)initWithRebate:(double)rebate
{
    if (self = [super init]) {
        _rebate = rebate;
    }
    return self;
}

- (double)acceptCash:(double)acceptCash
{
    return acceptCash * self.rebate;
}

@end
