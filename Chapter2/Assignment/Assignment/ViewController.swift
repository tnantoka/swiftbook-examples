//
//  ViewController.swift
//  Assignment
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
        var a: Bool // Bool型の変数aを宣言
        let b: Bool // Bool型の定数bを宣言
        a = true    // 変数aをtrueで初期化
        b = false   // 定数bをfalseで初期化
        print(a)
        a = b       // 変数aを変数bの値で更新
        print(a)
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

