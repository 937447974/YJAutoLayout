//
//  UIView+YJAutoLayout.h
//  YJAutoLayout
//
//  Created by admin on 16/4/22.
//  Copyright © 2016年 YJ. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/** 仿NSLayoutAnchor扩展UIView*/
@interface UIView (YJAutoLayout)

#pragma mark - UIViewLayoutConstraintCreation
@property(readonly, strong) YJXAxisLayout *leadingAnchor NS_AVAILABLE_IOS(9_0);
@property(readonly, strong) NSLayoutXAxisAnchor *trailingAnchor NS_AVAILABLE_IOS(9_0);
@property(readonly, strong) NSLayoutXAxisAnchor *leftAnchor NS_AVAILABLE_IOS(9_0);
@property(readonly, strong) NSLayoutXAxisAnchor *rightAnchor NS_AVAILABLE_IOS(9_0);
@property(readonly, strong) NSLayoutYAxisAnchor *topAnchor NS_AVAILABLE_IOS(9_0);
@property(readonly, strong) NSLayoutYAxisAnchor *bottomAnchor NS_AVAILABLE_IOS(9_0);
@property(readonly, strong) NSLayoutDimension *widthAnchor NS_AVAILABLE_IOS(9_0);
@property(readonly, strong) NSLayoutDimension *heightAnchor NS_AVAILABLE_IOS(9_0);
@property(readonly, strong) NSLayoutXAxisAnchor *centerXAnchor NS_AVAILABLE_IOS(9_0);
@property(readonly, strong) NSLayoutYAxisAnchor *centerYAnchor NS_AVAILABLE_IOS(9_0);
@property(readonly, strong) NSLayoutYAxisAnchor *firstBaselineAnchor NS_AVAILABLE_IOS(9_0);
@property(readonly, strong) NSLayoutYAxisAnchor *lastBaselineAnchor NS_AVAILABLE_IOS(9_0);

#pragma mark - UILayoutSupport

@end

NS_ASSUME_NONNULL_END
