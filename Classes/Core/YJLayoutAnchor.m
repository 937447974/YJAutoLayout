//
//  YJLayoutAnchor.m
//  YJAutoLayout
//
//  Created by admin on 16/4/22.
//  Copyright © 2016年 YJ. All rights reserved.
//

#import "YJLayoutAnchor.h"

@implementation YJLayoutAnchor

- (instancetype)initWithItem:(id)item attribute:(NSLayoutAttribute)attribute {
    
    self = [super init];
    if (self) {
        _item = item;
        _attribute = attribute;
    }
    return self;
    
}

@end
