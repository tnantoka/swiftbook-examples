//
//  ViewController.swift
//  ScopeIf
//
//  Created by Tatsuya Tobioka on 2017/11/29.
//  Copyright © 2017 tnantoka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        /// [marker1]
        let num = 2
        if num % 2 == 0 {
            let message = "偶数です"
            print(num, message)     // 外側で定義されたnumは使える
        }
        // print(message)           // 内側で定義されたmessageは使えない
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

