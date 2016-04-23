//
//  NSLayoutConstraint+YJExtend.m
//  YJAutoLayout
//
//  Created by admin on 16/4/22.
//  Copyright © 2016年 YJ. All rights reserved.
//

#import "NSLayoutConstraint+YJExtend.h"

@implementation NSLayoutConstraint (YJExtend)

#pragma mark - (+)
#pragma mark NSLayoutRelationEqual
+ (instancetype)constraintWithItem:(id)view1 attribute:(NSLayoutAttribute)attr1 equalToItem:(id)view2 attribute:(NSLayoutAttribute)attr2 {
    
    return [self constraintWithItem:view1 attribute:attr1 equalToItem:view2 attribute:attr2 multiplier:1 constant:0];
    
}

+ (instancetype)constraintWithItem:(id)view1 attribute:(NSLayoutAttribute)attr1 equalToItem:(nullable id)view2 attribute:(NSLayoutAttribute)attr2 constant:(CGFloat)c {
    
    return [self constraintWithItem:view1 attribute:attr1 equalToItem:view2 attribute:attr2 multiplier:1 constant:c];
    
}

+ (instancetype)constraintWithItem:(id)view1 attribute:(NSLayoutAttribute)attr1 equalToItem:(nullable id)view2 attribute:(NSLayoutAttribute)attr2 multiplier:(CGFloat)multiplier constant:(CGFloat)c {
    
    return [self constraintWithItem:view1 attribute:attr1 relationBy:NSLayoutRelationEqual toItem:view2 attribute:attr2 multiplier:multiplier constant:c];
    
}

#pragma mark NSLayoutRelationLessThanOrEqual
+ (instancetype)constraintWithItem:(id)view1 attribute:(NSLayoutAttribute)attr1 lessThanOrEqualToItem:(nullable id)view2 attribute:(NSLayoutAttribute)attr2 {
    
    return [self constraintWithItem:view1 attribute:attr1 lessThanOrEqualToItem:view2 attribute:attr2 multiplier:1 constant:0];
    
}

+ (instancetype)constraintWithItem:(id)view1 attribute:(NSLayoutAttribute)attr1 lessThanOrEqualToItem:(nullable id)view2 attribute:(NSLayoutAttribute)attr2 constant:(CGFloat)c {
    
    return [self constraintWithItem:view1 attribute:attr1 lessThanOrEqualToItem:view2 attribute:attr2 multiplier:1 constant:c];
    
}

+ (instancetype)constraintWithItem:(id)view1 attribute:(NSLayoutAttribute)attr1 lessThanOrEqualToItem:(nullable id)view2 attribute:(NSLayoutAttribute)attr2 multiplier:(CGFloat)multiplier constant:(CGFloat)c {
    
    return [self constraintWithItem:view1 attribute:attr1 relationBy:NSLayoutRelationLessThanOrEqual toItem:view2 attribute:attr2 multiplier:multiplier constant:c];
    
}

#pragma mark NSLayoutRelationGreaterThanOrEqual
+ (instancetype)constraintWithItem:(id)view1 attribute:(NSLayoutAttribute)attr1 greaterThanOrEqualToItem:(nullable id)view2 attribute:(NSLayoutAttribute)attr2 {
    
    return [self constraintWithItem:view1 attribute:attr1 greaterThanOrEqualToItem:view2 attribute:attr2 multiplier:1 constant:0];
    
}

+ (instancetype)constraintWithItem:(id)view1 attribute:(NSLayoutAttribute)attr1 greaterThanOrEqualToItem:(nullable id)view2 attribute:(NSLayoutAttribute)attr2 constant:(CGFloat)c {
    
    return [self constraintWithItem:view1 attribute:attr1 greaterThanOrEqualToItem:view2 attribute:attr2 multiplier:1 constant:c];
    
}

+ (instancetype)constraintWithItem:(id)view1 attribute:(NSLayoutAttribute)attr1 greaterThanOrEqualToItem:(nullable id)view2 attribute:(NSLayoutAttribute)attr2 multiplier:(CGFloat)multiplier constant:(CGFloat)c{
    
    return [self constraintWithItem:view1 attribute:attr1 relationBy:NSLayoutRelationGreaterThanOrEqual toItem:view2 attribute:attr2 multiplier:multiplier constant:c];
    
}

#pragma mark base
+ (instancetype)constraintWithItem:(id)view1 attribute:(NSLayoutAttribute)attr1 relationBy:(NSLayoutRelation)relation toItem:(nullable id)view2 attribute:(NSLayoutAttribute)attr2 multiplier:(CGFloat)multiplier constant:(CGFloat)c {
    
    NSLayoutConstraint *lc = [self constraintWithItem:view1 attribute:attr1 relatedBy:relation toItem:view2 attribute:attr2 multiplier:multiplier constant:c];
    if ([view1 isKindOfClass:[UIView class]]) {
        ((UIView *)view1).translatesAutoresizingMaskIntoConstraints = NO;
    }
    if ([view2 isKindOfClass:[UIView class]]) {
        ((UIView *)view2).translatesAutoresizingMaskIntoConstraints = NO;
    }
    lc.active = YES;
    return lc;
    
}

#pragma mark - getter
- (Constant)constants {
    
    __weak NSLayoutConstraint *lcWeak = self;
    Constant constants = ^(CGFloat constant) {
        lcWeak.constant = constant;
        return lcWeak;
    };
    return constants;
    
}

@end
