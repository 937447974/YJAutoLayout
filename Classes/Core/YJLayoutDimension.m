//
//  YJLayoutDimension.m
//  YJAutoLayout
//
//  Created by admin on 16/4/22.
//  Copyright © 2016年 YJ. All rights reserved.
//

#import "YJLayoutDimension.h"

@implementation YJLayoutDimension

#pragma mark - getter
- (LessThanOrEqualToConstant)lessThanOrEqualToConstant {
    
    __weak YJLayoutAnchor *wSelf = self;
    LessThanOrEqualToConstant lessThanOrEqualToConstant = ^ (CGFloat constant) {
        return [NSLayoutConstraint constraintWithItem:wSelf.item attribute:wSelf.attribute lessThanOrEqualToConstant:constant];
    };
    return lessThanOrEqualToConstant;
    
}

- (EqualToConstant)equalToConstant {
    
    __weak YJLayoutAnchor *wSelf = self;
    EqualToConstant equalToConstant = ^ (CGFloat constant) {
        return [NSLayoutConstraint constraintWithItem:wSelf.item attribute:wSelf.attribute equalToConstant:constant];
    };
    return equalToConstant;
    
}

- (GreaterThanOrEqualToConstant)greaterThanOrEqualToConstant {
    
    __weak YJLayoutAnchor *wSelf = self;
    GreaterThanOrEqualToConstant greaterThanOrEqualToConstant = ^ (CGFloat constant) {
        return [NSLayoutConstraint constraintWithItem:wSelf.item attribute:wSelf.attribute greaterThanOrEqualToConstant:constant];
    };
    return greaterThanOrEqualToConstant;
    
}

@end
