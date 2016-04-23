//
//  YJLayoutSupport.m
//  YJAutoLayout
//
//  Created by admin on 16/4/23.
//  Copyright © 2016年 YJ. All rights reserved.
//

#import "YJLayoutSupport.h"

@implementation YJLayoutSupport

#pragma mark - super
- (instancetype)initWithItem:(id<UILayoutSupport>)layoutGuide {
    
    self = [super init];
    if (self) {
        _layoutGuide = layoutGuide;
    }
    return self;
    
}

@end
