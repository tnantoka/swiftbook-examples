//
//  ViewController.swift
//  NoDefer
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
            print("正常値の判定を開始します。")
            guard number > 30 else {
                print("正常値の判定を終了します。")
                return
            }
            guard number < 70 else {
                print("正常値の判定を終了します。")
                return
            }
            print("正常値です")
            print("正常値の判定を終了します。")
        }
        
        isNormal(number: 50)
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

