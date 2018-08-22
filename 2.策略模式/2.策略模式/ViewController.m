//
//  ViewController.m
//  2.策略模式
//
//  Created by N-X on 2018/8/17.
//  Copyright © 2018年 Marauder. All rights reserved.
//

#import "ViewController.h"
#import "CashContext.h"
#import "CashSuper.h"
#import "CashNormal.h"
#import "CashContext.h"
#import "CashRebate.h"
#import <PopoverObjc/ASPopover.h>
#import "PopoverTableView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *priceField;
@property (weak, nonatomic) IBOutlet UITextField *countField;
@property (weak, nonatomic) IBOutlet UILabel *totalPriceLabel;
@property (nonatomic ,strong)PopoverTableView * popoverTableView;
@property (nonatomic ,strong)ASPopover * popove;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
}

- (PopoverTableView *)popoverTableView
{
    if (!_popoverTableView) {
        _popoverTableView = [[PopoverTableView alloc]initWithFrame:CGRectMake(0, 0, 150, 150)];
        _popoverTableView.dataSource = @[@"正常",@"打折",@"满减"];
        __weak typeof(self)weakSelf = self;
        _popoverTableView.cellBlock = ^(NSInteger index) {
            [weakSelf.popove dismiss];
        };
    }
    return _popoverTableView;
}
#pragma mark -- 事件处理

- (IBAction)calculatorTotalPrice:(id)sender {
    
    CashContext * cc ;
    CashSuper * cs;
    if (@"打折") {
        cs = [[CashRebate alloc]initWithRebate:0.8];
    }
    cc = [[CashContext alloc]initWithCashSuper:cs];
}

// 选择活动规则
- (IBAction)rulesAction:(id)sender {
    ASPopoverOption * option = [[ASPopoverOption alloc]init];
    option.autoAjustDirection = YES;
    option.preferedType = ASPopoverTypeDown; // set prefered derection when autoAjustDirection = YES;
    option.arrowSize = CGSizeMake(9, 6);
    option.blackOverlayColor = [UIColor clearColor];
    option.popoverColor = [UIColor lightGrayColor];
    option.dismissOnBlackOverlayTap = YES;
    option.animationIn = 0.5;
    ASPopover * popover = [[ASPopover alloc]initWithOption:option];
    UIView *itemView = [self.navigationItem.rightBarButtonItem valueForKey:@"view"]; // you should use custom view in item;
    if (itemView) {
        [popover show:self.popoverTableView fromView:itemView];
    }
    self.popove = popover;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.priceField resignFirstResponder];
    [self.countField resignFirstResponder];
}

@end
