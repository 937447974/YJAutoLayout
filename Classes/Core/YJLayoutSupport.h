//
//  YJLayoutSupport.h
//  YJAutoLayout
//
//  Created by admin on 16/4/23.
//  Copyright © 2016年 YJ. All rights reserved.
//

#import "YJLayoutYAxisAnchor.h"

/** 仿UILayoutSupport*/
NS_CLASS_AVAILABLE_IOS(7_0)
@interface YJLayoutSupport : NSObject

/* Constraint creation conveniences. See YJLayoutAnchor.h for details.
 */
@property (nonatomic, strong, readonly) YJLayoutYAxisAnchor *topAnchor;
@property (nonatomic, strong, readonly) YJLayoutYAxisAnchor *bottomAnchor;

@property (nonatomic, strong, readonly,) id<UILayoutSupport> layoutGuide;

- (instancetype)initWithItem:(id<UILayoutSupport>)layoutGuide;

@end
