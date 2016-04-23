//
//  YJLayoutAnchor.h
//  YJAutoLayout
//
//  Created by admin on 16/4/22.
//  Copyright © 2016年 YJ. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NSLayoutConstraint+YJExtend.h"

NS_ASSUME_NONNULL_BEGIN

@class YJLayoutAnchor;


/** 类泛型*/
@protocol YJAnchorType <NSObject>

@end


// 相关block，链式执行
/** NSLayoutConstraint.relation = NSLayoutRelationLessThanOrEqual*/
typedef NSLayoutConstraint * _Nonnull (^ LessThanOrEqualTo)(YJLayoutAnchor<YJAnchorType> *anchor);
/** NSLayoutConstraint.relation = NSLayoutRelationEqual*/
typedef NSLayoutConstraint * _Nonnull (^ EqualTo)(YJLayoutAnchor<YJAnchorType> *anchor);
/** NSLayoutConstraint.relation = NSLayoutRelationGreaterThanOrEqual*/
typedef NSLayoutConstraint * _Nonnull (^ GreaterThanOrEqualTo)(YJLayoutAnchor<YJAnchorType> *anchor);


/** YJLayoutAnchor对应的协议*/
@protocol YJLayoutAnchorProtocol <NSObject>

@property (nonatomic, copy, readonly) LessThanOrEqualTo lessThanOrEqualTo;
@property (nonatomic, copy, readonly) EqualTo equalTo;
@property (nonatomic, copy, readonly) GreaterThanOrEqualTo greaterThanOrEqualTo;

@end


/** 仿NSLayoutAnchor*/
@interface YJLayoutAnchor<YJAnchorType> : NSObject <YJLayoutAnchorProtocol>

@property (nonatomic, readonly, nullable) id item;
@property (nonatomic, readonly) NSLayoutAttribute attribute;

- (instancetype)initWithItem:(id)item attribute:(NSLayoutAttribute)attribute;

@end

NS_ASSUME_NONNULL_END
