//
//  ViewController.m
//  YJAutoLayout
//
//  CSDN:http://blog.csdn.net/y550918116j
//  GitHub:https://github.com/937447974/Blog
//
//  Created by 阳君 on 16/4/22.
//  Copyright © 2016年 YJ. All rights reserved.
//

#import "ViewController.h"
#import "YJAutoLayout.h"

@interface ViewController ()

@property (nonatomic, strong) UIView *yellowView;
@property (nonatomic, strong) UIView *greenView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    /*
     NSLayoutConstraint(item view1: AnyObject, attribute attr1: NSLayoutAttribute, relatedBy relation: NSLayoutRelation, toItem view2: AnyObject?, attribute attr2: NSLayoutAttribute, multiplier: CGFloat, constant c: CGFloat)
     遵循的原则，在UI上，
     1. 左边的View对应view1，右边的View对应view2；
     2. 下面的View对应View1，上面的View对应View2。
     口诀就是：先右下后左上
     */
    /* 约束伪代码
     Yellow View.Leading = Superview.LeadingMargin
     Yellow View.Top = Top Layout Guide.Bottom + 20.0
     Bottom Layout Guide.Top = Yellow View.Bottom + 20.0
     
     Green View.Trailing = Superview.TrailingMargin
     Green View.Top = Top Layout Guide.Bottom + 20.0
     Bottom Layout Guide.Top = Green View.Bottom + 20.0
     
     Green View.Leading = Yellow View.Trailing + 30.0
     Yellow View.Width = Green View.Width
     */
    // 1 添加View
    // 黄View
    self.yellowView = [[UIView alloc] initWithFrame:CGRectZero];
    self.yellowView.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:self.yellowView];
    // 绿View
    self.greenView = [[UIView alloc] initWithFrame:CGRectZero];
    self.greenView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:self.greenView];
    BOOL c = [self.topLayoutGuide isKindOfClass:[UIView class]];
//    [self testNSLayoutConstraint];
//    [self testNSLayoutConstraintExtend];
//    [self testNSLayoutAnchor];
    [self testYJAutoLayout];
}

#pragma mark - NSLayoutConstraint Test
- (void)testNSLayoutConstraint {
    
    // 2 开启AutoLayout
    _yellowView.translatesAutoresizingMaskIntoConstraints  = NO;
    _greenView.translatesAutoresizingMaskIntoConstraints = NO;
    
    // 3 设置约束
    // 3.1 yellow约束
    [NSLayoutConstraint constraintWithItem:_yellowView attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeadingMargin multiplier:1 constant:0].active = YES;
    [NSLayoutConstraint constraintWithItem:_yellowView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.topLayoutGuide attribute:NSLayoutAttributeBottom multiplier:1 constant:20].active = YES;
    [NSLayoutConstraint constraintWithItem:self.bottomLayoutGuide attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:_yellowView attribute:NSLayoutAttributeBottom multiplier:1 constant:20].active = YES;// yBottom
    // 3.2 green约束
    [NSLayoutConstraint constraintWithItem:self.view attribute:NSLayoutAttributeTrailingMargin relatedBy:NSLayoutRelationEqual toItem:_greenView attribute:NSLayoutAttributeTrailing multiplier:1 constant:0].active = YES; // gTrailing
     [NSLayoutConstraint constraintWithItem:_greenView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.topLayoutGuide attribute:NSLayoutAttributeBottom multiplier:1 constant:20].active = YES;// gTop
     [NSLayoutConstraint constraintWithItem:self.bottomLayoutGuide attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:_greenView attribute:NSLayoutAttributeBottom multiplier:1 constant:20].active = YES;// gBottom
    
    // 3.3 green和yellow的共有约束
    [NSLayoutConstraint constraintWithItem:_greenView attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:_yellowView attribute:NSLayoutAttributeTrailing multiplier:1 constant:30].active = YES; // 间距
    [NSLayoutConstraint constraintWithItem:_greenView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:_yellowView attribute:NSLayoutAttributeWidth multiplier:1 constant:0].active = YES; // 等宽
    
    // 打印所有约束
    for (NSLayoutConstraint *constraint in self.view.constraints ) {
        NSLog(@"%@", constraint);
    }
    
}

#pragma mark NSLayoutConstraint (YJExtend) Test
- (void)testNSLayoutConstraintExtend {
    
    // 设置约束
    // 1 yellow约束
    [NSLayoutConstraint constraintWithItem:_yellowView attribute:NSLayoutAttributeLeading equalToItem:self.view attribute:NSLayoutAttributeLeadingMargin]; // yLeading
    [NSLayoutConstraint constraintWithItem:_yellowView attribute:NSLayoutAttributeTop equalToItem:self.topLayoutGuide attribute:NSLayoutAttributeBottom constant:20]; // yTop
    [NSLayoutConstraint constraintWithItem:self.bottomLayoutGuide attribute:NSLayoutAttributeTop equalToItem:_yellowView attribute:NSLayoutAttributeBottom constant:20]; // yBottom
    // 2 green约束
    [NSLayoutConstraint constraintWithItem:self.view attribute:NSLayoutAttributeTrailingMargin equalToItem:_greenView attribute:NSLayoutAttributeTrailing]; // gTrailing
    [NSLayoutConstraint constraintWithItem:_greenView attribute:NSLayoutAttributeTop equalToItem:self.topLayoutGuide attribute:NSLayoutAttributeBottom].constants(20);// gTop
    [NSLayoutConstraint constraintWithItem:self.bottomLayoutGuide attribute:NSLayoutAttributeTop equalToItem:_greenView attribute:NSLayoutAttributeBottom].constants(20);// gBottom
    // 3 green和yellow的共有约束
    [NSLayoutConstraint constraintWithItem:_greenView attribute:NSLayoutAttributeLeading equalToItem:_yellowView attribute:NSLayoutAttributeTrailing].constants(30); // 间距
    [NSLayoutConstraint constraintWithItem:_greenView attribute:NSLayoutAttributeWidth equalToItem:_yellowView attribute:NSLayoutAttributeWidth]; // 等宽
    
}

#pragma mark NSLayoutAnchor Test
- (void)testNSLayoutAnchor {
    
    // 2 开启AutoLayout
    _yellowView.translatesAutoresizingMaskIntoConstraints = NO;
    _greenView.translatesAutoresizingMaskIntoConstraints = NO;
    // 3 设置约束
    // 3.1 yellow约束
    [_yellowView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:20].active = YES;
    [_yellowView.topAnchor constraintEqualToAnchor:self.topLayoutGuide.bottomAnchor constant:20].active = YES;
    [self.bottomLayoutGuide.topAnchor constraintEqualToAnchor:_yellowView.bottomAnchor constant:20].active = YES;
    // 3.2 green约束
    [_greenView.topAnchor constraintEqualToAnchor:self.topLayoutGuide.bottomAnchor constant:20].active = YES;
    [self.view.trailingAnchor constraintEqualToAnchor:_greenView.trailingAnchor constant:20].active = YES;
    [self.bottomLayoutGuide.topAnchor constraintEqualToAnchor:_greenView.bottomAnchor constant:20].active = YES;
    // 3.3 green和yellow的共有约束
    [_greenView.leadingAnchor constraintEqualToAnchor:_yellowView.trailingAnchor constant:30].active = YES; // 间距
    [_greenView.widthAnchor constraintEqualToAnchor:_yellowView.widthAnchor].active = YES; // 等宽
    
}

#pragma mark YJAutoLayout Test
- (void)testYJAutoLayout {
    
    // 1 yellow约束
    _yellowView.leadingLayout.equalTo(self.view.leadingLayout).constants(20);
    _yellowView.topLayout.equalTo(self.topLayoutSupport.bottomLayout).constants(20);
    self.bottomLayoutSupport.topLayout.equalTo(_yellowView.bottomLayout).constants(20);
    // 2 green约束
    _greenView.topLayout.equalTo(self.topLayoutSupport.bottomLayout).constants(20);
    self.view.trailingLayout.equalTo(_greenView.trailingLayout).constants(20);
    self.bottomLayoutSupport.topLayout.equalTo(_greenView.bottomLayout).constants(20);
    // 3 green和yellow的共有约束
    _greenView.leadingLayout.equalTo(_yellowView.trailingLayout).constants(30);
    _greenView.widthLayout.equalTo(_yellowView.widthLayout);
    
}

@end
