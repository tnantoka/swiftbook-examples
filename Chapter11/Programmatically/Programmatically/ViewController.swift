//
//  ViewController.swift
//  Programmatically
//
//  Created by Tobioka on 2017/10/19.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /// [marker1]
    override func viewDidLoad() {
        super.viewDidLoad()

        let rectView = UIView(frame: CGRect(
            x: 20.0,
            y: 50.0,
            width: 150.0,
            height: 50.0
        ))
        rectView.backgroundColor = .lightGray // 背景色を薄いグレーに
        view.addSubview(rectView)
    }
    /// [marker1]

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

