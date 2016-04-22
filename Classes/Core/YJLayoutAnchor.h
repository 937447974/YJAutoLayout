//
//  YJLayoutAnchor.h
//  YJAutoLayout
//
//  Created by admin on 16/4/22.
//  Copyright © 2016年 YJ. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class YJLayoutAnchor;

typedef NSLayoutConstraint * _Nonnull (^ EqualTo)(YJLayoutAnchor *anchor);
typedef NSLayoutConstraint * _Nonnull (^ GreaterThan)(YJLayoutAnchor *anchor);
typedef NSLayoutConstraint * _Nonnull (^ LessThan)(YJLayoutAnchor *anchor);

/** 仿NSLayoutAnchor*/
@interface YJLayoutAnchor : NSObject

@property (nonatomic, copy) EqualTo equalTo;
@property (nonatomic, copy) GreaterThan greaterThan;
@property (nonatomic, copy) LessThan lessThan;

@property (nonatomic, readonly) id item;
@property (nonatomic, readonly) NSLayoutAttribute attribute;

- (instancetype)initWithItem:(id)item attribute:(NSLayoutAttribute)attribute;

@end

NS_ASSUME_NONNULL_END
