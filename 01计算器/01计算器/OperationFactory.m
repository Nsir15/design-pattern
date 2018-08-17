//
//  OperationFactory.m
//  01计算器
//
//  Created by N-X on 2018/8/17.
//  Copyright © 2018年 Marauder. All rights reserved.
//  工厂类

#import "OperationFactory.h"
#import "Addoperation.h"
#import "Subopetration.h"

@implementation OperationFactory
+ (Operation *)createOperationWithOPerate:(NSString *)operate
{
    Operation * operation ;
    
    if ([operate isEqualToString:@"+"]) {
        operation = [[Addoperation alloc]init];
    }else if ([operate isEqualToString:@"-"])
    {
        operation = [[Subopetration alloc]init];
    }
    return operation;
}

@end
