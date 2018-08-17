//
//  Operation.h
//  01计算器
//
//  Created by N-X on 2018/8/17.
//  Copyright © 2018年 Marauder. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Operation : NSObject
@property(nonatomic,assign)double numberA;
@property(nonatomic,assign)double nunberB;
- (double)getResult;
@end
