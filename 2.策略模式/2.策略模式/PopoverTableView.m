//
//  PopoverTableView.m
//  2.策略模式
//
//  Created by N-X on 2018/8/20.
//  Copyright © 2018年 Marauder. All rights reserved.
//

#import "PopoverTableView.h"
@interface PopoverTableView ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic ,strong)UITableView * tableView;
@end

@implementation PopoverTableView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self addSubview:self.tableView];
    }
    return  self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    self.tableView.frame = self.bounds;
}

#pragma mark - lazy load

- (UITableView *)tableView
{
    if (!_tableView) {
        _tableView = [[UITableView alloc]initWithFrame:CGRectZero];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.backgroundColor = [UIColor clearColor];
    }
    return _tableView;
}

- (void)setDataSource:(NSArray *)dataSource
{
    _dataSource = dataSource;
    [self.tableView reloadData];
}

#pragma mark - UITableViewDelegate && UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"cellID"];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cellID"];
    }
    cell.backgroundColor = [UIColor clearColor];
    cell.textLabel.text = self.dataSource[indexPath.row];
    cell.textLabel.textAlignment = NSTextAlignmentCenter;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    !self.cellBlock ?:self.cellBlock(indexPath.row);
}

@end
