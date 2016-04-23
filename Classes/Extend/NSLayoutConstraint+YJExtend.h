//
//  NSLayoutConstraint+YJExtend.h
//  YJAutoLayout
//
//  CSDN:http://blog.csdn.net/y550918116j
//  GitHub:https://github.com/937447974/Blog
//
//  Created by 阳君 on 16/4/22.
//  Copyright © 2016年 YJ. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NSLayoutConstraint * _Nonnull (^ Constant)(CGFloat constant);

/** NSLayoutConstraint扩展*/
@interface NSLayoutConstraint (YJExtend)

/** 修改constant的值*/
@property (nonatomic, copy, readonly) Constant constants;

#pragma mark - (+)
#pragma mark NSLayoutRelationEqual
/**
 *  生成NSLayoutConstraint
 *
 *  relatedBy = NSLayoutRelationEqual;view2 = nil; multiplier = 1;
 *
 *  @return NSLayoutConstraint
 */
+ (instancetype)constraintWithItem:(id)view1 attribute:(NSLayoutAttribute)attr1 equalToConstant:(CGFloat)c;

/**
 *  生成NSLayoutConstraint
 *
 *  relatedBy = NSLayoutRelationEqual; multiplier = 1; constant = 0;
 *
 *  @return NSLayoutConstraint
 */
+ (instancetype)constraintWithItem:(id)view1 attribute:(NSLayoutAttribute)attr1 equalToItem:(nullable id)view2 attribute:(NSLayoutAttribute)attr2;

/**
 *  生成NSLayoutConstraint
 *
 *  relatedBy = NSLayoutRelationEqual; multiplier = 1;
 *
 *  @return NSLayoutConstraint
 */
+ (instancetype)constraintWithItem:(id)view1 attribute:(NSLayoutAttribute)attr1 equalToItem:(nullable id)view2 attribute:(NSLayoutAttribute)attr2 constant:(CGFloat)c;

/**
 *  生成NSLayoutConstraint
 *
 *  relatedBy = NSLayoutRelationEqual;
 *
 *  @return NSLayoutConstraint
 */
+ (instancetype)constraintWithItem:(id)view1 attribute:(NSLayoutAttribute)attr1 equalToItem:(nullable id)view2 attribute:(NSLayoutAttribute)attr2 multiplier:(CGFloat)multiplier constant:(CGFloat)c;

#pragma mark NSLayoutRelationLessThanOrEqual
/**
 *  生成NSLayoutConstraint
 *
 *  relatedBy = NSLayoutRelationEqual;view2 = nil; multiplier = 1;
 *
 *  @return NSLayoutConstraint
 */
+ (instancetype)constraintWithItem:(id)view1 attribute:(NSLayoutAttribute)attr1 lessThanOrEqualToConstant:(CGFloat)c;

/**
 *  生成NSLayoutConstraint
 *
 *  relatedBy = NSLayoutRelationLessThanOrEqual; multiplier = 1; constant = 0;
 *
 *  @return NSLayoutConstraint
 */
+ (instancetype)constraintWithItem:(id)view1 attribute:(NSLayoutAttribute)attr1 lessThanOrEqualToItem:(nullable id)view2 attribute:(NSLayoutAttribute)attr2;

/**
 *  生成NSLayoutConstraint
 *
 *  relatedBy = NSLayoutRelationLessThanOrEqual; multiplier = 1;
 *
 *  @return NSLayoutConstraint
 */
+ (instancetype)constraintWithItem:(id)view1 attribute:(NSLayoutAttribute)attr1 lessThanOrEqualToItem:(nullable id)view2 attribute:(NSLayoutAttribute)attr2 constant:(CGFloat)c;

/**
 *  生成NSLayoutConstraint
 *
 *  relatedBy = NSLayoutRelationLessThanOrEqual;
 *
 *  @return NSLayoutConstraint
 */
+ (instancetype)constraintWithItem:(id)view1 attribute:(NSLayoutAttribute)attr1 lessThanOrEqualToItem:(nullable id)view2 attribute:(NSLayoutAttribute)attr2 multiplier:(CGFloat)multiplier constant:(CGFloat)c;

#pragma mark NSLayoutRelationGreaterThanOrEqual
/**
 *  生成NSLayoutConstraint
 *
 *  relatedBy = NSLayoutRelationGreaterThanOrEqual;view2 = nil; multiplier = 1;
 *
 *  @return NSLayoutConstraint
 */
+ (instancetype)constraintWithItem:(id)view1 attribute:(NSLayoutAttribute)attr1 greaterThanOrEqualToConstant:(CGFloat)c;

/**
 *  生成NSLayoutConstraint
 *
 *  relatedBy = NSLayoutRelationGreaterThanOrEqual; multiplier = 1; constant = 0;
 *
 *  @return NSLayoutConstraint
 */
+ (instancetype)constraintWithItem:(id)view1 attribute:(NSLayoutAttribute)attr1 greaterThanOrEqualToItem:(nullable id)view2 attribute:(NSLayoutAttribute)attr2;

/**
 *  生成NSLayoutConstraint
 *
 *  relatedBy = NSLayoutRelationGreaterThanOrEqual; multiplier = 1;
 *
 *  @return NSLayoutConstraint
 */
+ (instancetype)constraintWithItem:(id)view1 attribute:(NSLayoutAttribute)attr1 greaterThanOrEqualToItem:(nullable id)view2 attribute:(NSLayoutAttribute)attr2 constant:(CGFloat)c;

/**
 *  生成NSLayoutConstraint
 *
 *  relatedBy = NSLayoutRelationGreaterThanOrEqual;
 *
 *  @return NSLayoutConstraint
 */
+ (instancetype)constraintWithItem:(id)view1 attribute:(NSLayoutAttribute)attr1 greaterThanOrEqualToItem:(nullable id)view2 attribute:(NSLayoutAttribute)attr2 multiplier:(CGFloat)multiplier constant:(CGFloat)c;

@end

NS_ASSUME_NONNULL_END
