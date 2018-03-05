//
//  ViewController.swift
//  Naming
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
        let test = "test"
        let Test = "test"
        let test2 = "test"
        let _test = "test"
        let テスト = "test"
        let `let` = "test"
        
        // let test = "test"   // 既に使われている
        // let 2test = "test"  // 数字から始まる
        // let test-3 = "test" // 演算子を含む
        // let let = "test"    // Swiftに予約されている名前を``無しで使用
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

