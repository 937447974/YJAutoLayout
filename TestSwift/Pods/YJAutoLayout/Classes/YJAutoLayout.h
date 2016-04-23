//
//  YJAutoLayout.h
//  YJAutoLayout
//
//  CSDN:http://blog.csdn.net/y550918116j
//  GitHub:https://github.com/937447974/Blog
//
//  Created by 阳君 on 16/4/22.
//  Copyright © 2016年 YJ. All rights reserved.
//

#import "UIView+YJViewLayoutConstraintCreation.h"
#import "UIViewController+YJLayoutSupport.h"

NS_ASSUME_NONNULL_BEGIN

@interface YJAutoLayout : NSObject

@end

NS_ASSUME_NONNULL_END

// 使用说明
//
// NSLayoutConstraint(item view1: AnyObject, attribute attr1: NSLayoutAttribute, relatedBy relation: NSLayoutRelation, toItem view2: AnyObject?, attribute attr2: NSLayoutAttribute, multiplier: CGFloat, constant c: CGFloat)
// 公式：view1.attr1 = view2.attr2 * multiplier + constant
//
// 遵循的原则，在UI上，
// 1. 左边的View对应view1，右边的View对应view2；
// 2. 下面的View对应View1，上面的View对应View2。
//
// 综上所述，即右下的view放在前面，左上的view放在后面。
// 口诀就是：先右下后左上
