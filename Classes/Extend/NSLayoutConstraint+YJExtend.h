//
//  NSLayoutConstraint+YJExtend.h
//  YJAutoLayout
//
//  Created by admin on 16/4/22.
//  Copyright © 2016年 YJ. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NSLayoutConstraint * _Nonnull (^ Constant)(CGFloat constant);

// view1.attr1 = view2.attr2 * multiplier + constant
// 生成之后，ios8 默认NSLayoutConstraint.active = YES;

/** NSLayoutConstraint扩展*/
@interface NSLayoutConstraint (YJExtend)

/** 修改constant的值*/
@property (nonatomic, copy, readonly) Constant constants;

/**
 *  生成NSLayoutConstraint
 *
 *  relatedBy = NSLayoutRelationEqual; multiplier = 1; constant = 0;
 *
 *  @return NSLayoutConstraint
 */
+ (instancetype)constraintWithItem:(id)view1 attribute:(NSLayoutAttribute)attr1 toItem:(nullable id)view2 attribute:(NSLayoutAttribute)attr2;

/**
 *  生成NSLayoutConstraint
 *
 *  relatedBy = NSLayoutRelationEqual; multiplier = 1;
 *
 *  @return NSLayoutConstraint
 */
+ (instancetype)constraintWithItem:(id)view1 attribute:(NSLayoutAttribute)attr1 toItem:(nullable id)view2 attribute:(NSLayoutAttribute)attr2 constant:(CGFloat)c;

/**
 *  生成NSLayoutConstraint
 *
 *  relatedBy = NSLayoutRelationEqual;
 *
 *  @return NSLayoutConstraint
 */
+ (instancetype)constraintWithItem:(id)view1 attribute:(NSLayoutAttribute)attr1 toItem:(nullable id)view2 attribute:(NSLayoutAttribute)attr2 multiplier:(CGFloat)multiplier constant:(CGFloat)c;

@end

NS_ASSUME_NONNULL_END