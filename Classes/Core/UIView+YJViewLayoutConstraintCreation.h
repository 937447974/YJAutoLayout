//
//  UIView+YJViewLayoutConstraintCreation.h
//  YJAutoLayout
//
//  CSDN:http://blog.csdn.net/y550918116j
//  GitHub:https://github.com/937447974/Blog
//
//  Created by 阳君 on 16/4/23.
//  Copyright © 2016年 YJ. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YJLayoutDimension.h"
#import "YJLayoutXAxisAnchor.h"
#import "YJLayoutYAxisAnchor.h"

NS_ASSUME_NONNULL_BEGIN

/** 仿UIViewLayoutConstraintCreation扩展UIView*/
@interface UIView (YJViewLayoutConstraintCreation)

@property (nonatomic, strong, readonly) YJLayoutXAxisAnchor *leftLayout;     ///< 替换leftAnchor
@property (nonatomic, strong, readonly) YJLayoutXAxisAnchor *rightLayout;    ///< 替换rightAnchor
@property (nonatomic, strong, readonly) YJLayoutYAxisAnchor *topLayout;      ///< 替换topAnchor
@property (nonatomic, strong, readonly) YJLayoutYAxisAnchor *bottomLayout;   ///< 替换bottomAnchor
@property (nonatomic, strong, readonly) YJLayoutXAxisAnchor *leadingLayout;  ///< 替换leadingAnchor
@property (nonatomic, strong, readonly) YJLayoutXAxisAnchor *trailingLayout; ///< 替换trailingAnchor
@property (nonatomic, strong, readonly) YJLayoutDimension *widthLayout;      ///< 替换widthAnchor
@property (nonatomic, strong, readonly) YJLayoutDimension *heightLayout;     ///< 替换heightAnchor
@property (nonatomic, strong, readonly) YJLayoutXAxisAnchor *centerXLayout;  ///< 替换centerXAnchor
@property (nonatomic, strong, readonly) YJLayoutYAxisAnchor *centerYLayout;  ///< 替换centerYAnchor

@end

NS_ASSUME_NONNULL_END
