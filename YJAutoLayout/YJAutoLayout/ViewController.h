//
//  ViewController.h
//  YJAutoLayout
//
//  Created by admin on 16/4/22.
//  Copyright © 2016年 YJ. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NSInteger (^ Block)(NSInteger c);

@interface ViewController : UIViewController

@property (nonatomic, copy) Block block;

@end

