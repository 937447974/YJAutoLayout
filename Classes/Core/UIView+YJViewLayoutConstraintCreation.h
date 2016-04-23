//
//  UIView+YJViewLayoutConstraintCreation.h
//  YJAutoLayout
//
//  Created by admin on 16/4/23.
//  Copyright © 2016年 YJ. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YJLayoutDimension.h"
#import "YJLayoutXAxisAnchor.h"
#import "YJLayoutYAxisAnchor.h"

NS_ASSUME_NONNULL_BEGIN

/** 仿UIViewLayoutConstraintCreation扩展UIView*/
@interface UIView (YJViewLayoutConstraintCreation)

@property (nonatomic, strong, readonly) YJLayoutXAxisAnchor *leftLayout;     ///< NSLayoutAttributeLeft
@property (nonatomic, strong, readonly) YJLayoutXAxisAnchor *rightLayout;    ///< NSLayoutAttributeRight
@property (nonatomic, strong, readonly) YJLayoutYAxisAnchor *topLayout;      ///< NSLayoutAttributeTop
@property (nonatomic, strong, readonly) YJLayoutYAxisAnchor *bottomLayout;   ///< NSLayoutAttributeBottom
@property (nonatomic, strong, readonly) YJLayoutXAxisAnchor *leadingLayout;  ///< NSLayoutAttributeLeading
@property (nonatomic, strong, readonly) YJLayoutXAxisAnchor *trailingLayout; ///< NSLayoutAttributeTrailing
@property (nonatomic, strong, readonly) YJLayoutDimension *widthLayout;      ///< NSLayoutAttributeWidth
@property (nonatomic, strong, readonly) YJLayoutDimension *heightLayout;     ///< NSLayoutAttributeHeight
@property (nonatomic, strong, readonly) YJLayoutXAxisAnchor *centerXLayout;  ///< NSLayoutAttributeCenterX
@property (nonatomic, strong, readonly) YJLayoutYAxisAnchor *centerYLayout;  ///< NSLayoutAttributeCenterY

@end

NS_ASSUME_NONNULL_END
