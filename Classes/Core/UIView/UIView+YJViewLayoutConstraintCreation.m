//
//  UIView+YJViewLayoutConstraintCreation.m
//  YJAutoLayout
//
//  CSDN:http://blog.csdn.net/y550918116j
//  GitHub:https://github.com/937447974/Blog
//
//  Created by 阳君 on 16/4/23.
//  Copyright © 2016年 YJ. All rights reserved.
//

#import "UIView+YJViewLayoutConstraintCreation.h"

@implementation UIView (YJViewLayoutConstraintCreation)

- (YJLayoutXAxisAnchor *)leftLayout {
    return [[YJLayoutXAxisAnchor alloc] initWithItem:self attribute:NSLayoutAttributeLeft];    
}

- (YJLayoutXAxisAnchor *)rightLayout {
    return [[YJLayoutXAxisAnchor alloc] initWithItem:self attribute:NSLayoutAttributeRight];
}

- (YJLayoutYAxisAnchor *)topLayout {
    return [[YJLayoutYAxisAnchor alloc] initWithItem:self attribute:NSLayoutAttributeTop];
}

- (YJLayoutYAxisAnchor *)bottomLayout {
    return [[YJLayoutYAxisAnchor alloc] initWithItem:self attribute:NSLayoutAttributeBottom];
}

- (YJLayoutXAxisAnchor *)leadingLayout {
    return [[YJLayoutXAxisAnchor alloc] initWithItem:self attribute:NSLayoutAttributeLeading];
}

- (YJLayoutXAxisAnchor *)trailingLayout {
    return [[YJLayoutXAxisAnchor alloc] initWithItem:self attribute:NSLayoutAttributeTrailing];
}

- (YJLayoutDimension *)widthLayout {
    return [[YJLayoutDimension alloc] initWithItem:self attribute:NSLayoutAttributeWidth];
}

- (YJLayoutDimension *)heightLayout {
    return [[YJLayoutDimension alloc] initWithItem:self attribute:NSLayoutAttributeHeight];
}

- (YJLayoutXAxisAnchor *)centerXLayout {
    return [[YJLayoutXAxisAnchor alloc] initWithItem:self attribute:NSLayoutAttributeCenterX];
}

- (YJLayoutYAxisAnchor *)centerYLayout {
    return [[YJLayoutYAxisAnchor alloc] initWithItem:self attribute:NSLayoutAttributeCenterY];
}

@end
