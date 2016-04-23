//
//  ViewController.swift
//  TestSwift
//
//  Created by 阳君 on 16/4/23.
//  Copyright © 2016年 YJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 1 添加View
        // 黄View
        let yellowView = UIView()
        yellowView.backgroundColor = UIColor.yellowColor()
        self.view.addSubview(yellowView)
        // 绿View
        let greenView = UIView()
        greenView.backgroundColor = UIColor.greenColor()
        self.view.addSubview(greenView)
        
        // 2 设置约束
        /* 约束伪代码
         Yellow View.Leading = Superview.Leading + 20.0
         Yellow View.Top = Top Layout Guide.Bottom + 20.0
         Bottom Layout Guide.Top = Yellow View.Bottom + 20.0
         
         Green View.Trailing = Superview.Trailing + 20.0
         Green View.Top = Top Layout Guide.Bottom + 20.0
         Bottom Layout Guide.Top = Green View.Bottom + 20.0
         
         Green View.Leading = Yellow View.Trailing + 30.0
         Yellow View.Width = Green View.Width
         */
        // 2.1 yellow约束
        yellowView.leadingLayout.equalTo(self.view.leadingLayout).constants(20)
        yellowView.topLayout.equalTo(self.topLayoutSupport.bottomLayout).constants(20)
        self.bottomLayoutSupport.topLayout.equalTo(yellowView.bottomLayout).constants(20)
        // 2.2 green约束
        greenView.topLayout.equalTo(self.topLayoutSupport.bottomLayout).constants(20)
        self.view.trailingLayout.equalTo(greenView.trailingLayout).constants(20)
        self.bottomLayoutSupport.topLayout.equalTo(greenView.bottomLayout).constants(20)
        // 2.3 green和yellow的共有约束
        greenView.leadingLayout.equalTo(yellowView.trailingLayout).constants(30)
        greenView.widthLayout.equalTo(yellowView.widthLayout)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

