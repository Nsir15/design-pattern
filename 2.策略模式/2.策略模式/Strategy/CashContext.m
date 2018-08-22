//
//  CashContext.m
//  2.策略模式
//
//  Created by N-X on 2018/8/20.
//  Copyright © 2018年 Marauder. All rights reserved.
//

#import "CashContext.h"
#import "CashSuper.h"

@interface CashContext ()
@property (nonatomic ,strong)CashSuper  * cs;
@end
@implementation CashContext
- (instancetype)initWithCashSuper:(CashSuper *)cs
{
    if(self = [super init])
    {
        _cs = cs;
    }
    return self ;
    
}

- (double)getResultWithMoney:(double)money
{
   return  [self.cs acceptCash:money];
}

@end
