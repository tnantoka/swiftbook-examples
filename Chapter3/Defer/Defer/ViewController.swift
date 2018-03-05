//
//  ViewController.swift
//  Defer
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
        func isNormal(number: Int) {
            defer {
                print("正常値の判定を終了します。")
            }
            print("正常値の判定を開始します。")
            guard number > 30 else {
                return
            }
            guard number < 70 else {
                return
            }
            print("正常値です")
        }
        
        isNormal(number: 20)
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

