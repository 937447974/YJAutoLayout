//
//  NSLayoutConstraint+YJExtend.m
//  YJAutoLayout
//
//  Created by admin on 16/4/22.
//  Copyright © 2016年 YJ. All rights reserved.
//

#import "NSLayoutConstraint+YJExtend.h"
#import <objc/runtime.h>

@implementation NSLayoutConstraint (YJExtend)

- (Constant)constants {
    
    return objc_getAssociatedObject(self, @"constants");
    
}

+ (instancetype)constraintWithItem:(id)view1 attribute:(NSLayoutAttribute)attr1 toItem:(id)view2 attribute:(NSLayoutAttribute)attr2 {
    
    return [self constraintWithItem:view1 attribute:attr1 toItem:view2 attribute:attr2 multiplier:1 constant:0];
    
}

+ (instancetype)constraintWithItem:(id)view1 attribute:(NSLayoutAttribute)attr1 toItem:(nullable id)view2 attribute:(NSLayoutAttribute)attr2 constant:(CGFloat)c
{
    return [self constraintWithItem:view1 attribute:attr1 toItem:view2 attribute:attr2 multiplier:1 constant:c];
}

+ (instancetype)constraintWithItem:(id)view1 attribute:(NSLayoutAttribute)attr1 toItem:(nullable id)view2 attribute:(NSLayoutAttribute)attr2 multiplier:(CGFloat)multiplier constant:(CGFloat)c {
    
    NSLayoutConstraint *lc = [self constraintWithItem:view1 attribute:attr1 relatedBy:NSLayoutRelationEqual toItem:view2 attribute:attr2 multiplier:multiplier constant:c];
    lc.active = YES;
    __weak NSLayoutConstraint *lcWeak = lc;
    Constant constants = ^(CGFloat constant) {
        lcWeak.constant = constant;
        return lcWeak;
    };
    objc_setAssociatedObject(lc, @"constants", constants, OBJC_ASSOCIATION_COPY);
    return lc;
    
}

@end
