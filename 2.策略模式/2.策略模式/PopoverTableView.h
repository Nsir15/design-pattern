//
//  PopoverTableView.h
//  2.策略模式
//
//  Created by N-X on 2018/8/20.
//  Copyright © 2018年 Marauder. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^PopoverTableViewCellDidClickHandle)(NSInteger index);
@interface PopoverTableView : UIView
@property(nonatomic,copy)NSArray * dataSource;
@property(nonatomic,copy)PopoverTableViewCellDidClickHandle  cellBlock;
@end
