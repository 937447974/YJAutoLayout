//
//  UIViewController+YJLayoutSupport.h
//  YJAutoLayout
//
//  Created by admin on 16/4/23.
//  Copyright © 2016年 YJ. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YJLayoutSupport.h"

/** 仿UILayoutSupport扩展UIViewController*/
@interface UIViewController (YJLayoutSupport)

@property (nonatomic, readonly, strong) YJLayoutSupport *topLayout NS_AVAILABLE_IOS(7_0); ///< 替代topLayoutGuide
@property (nonatomic, readonly, strong) YJLayoutSupport *bottomLayout NS_AVAILABLE_IOS(7_0); ///< 替代bottomLayoutGuide

@end
