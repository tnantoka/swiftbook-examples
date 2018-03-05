//
//  ViewController.swift
//  DeferOrder
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
                print("正常値の判定を終了します。")       // 3. 先に書かれたこの処理が後に実行される
            }
            defer {
                print("正常値の判定がもうすぐ終了します。") // 2. 後に書かれたこの処理が先に実行される
            }
            print("正常値の判定を開始します。")
            guard number > 30 else {
                return                               // 1. 異常値のためここで関数を抜ける
            }
            guard number < 70 else {
                return
            }
            defer {
                print("正常値の判定中です。")            // 異常値の場合はこの処理は実行されない
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

