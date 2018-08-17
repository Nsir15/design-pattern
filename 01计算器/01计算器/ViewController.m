//
//  ViewController.m
//  01计算器
//
//  Created by N-X on 2018/8/17.
//  Copyright © 2018年 Marauder. All rights reserved.
//

#import "ViewController.h"
#import "OperationFactory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Operation * addOperation = [OperationFactory createOperationWithOPerate:@"+"];
    addOperation.numberA = 1;
    addOperation.nunberB = 2;
    NSLog(@"运算结果 %f",[addOperation getResult]);
    
    Operation * subOperation = [OperationFactory createOperationWithOPerate:@"-"];
    subOperation.nunberB = 4;
    subOperation.numberA = 9;
    NSLog(@"减法运算结果是 %f",[subOperation getResult]);
}



@end
