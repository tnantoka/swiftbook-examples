//
//  ViewController.swift
//  Func
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
        var total: UInt32 = 0
        var even: UInt32 = 0
        
        // ランダム生成、合計計算、偶数カウントを行なう関数を定義
        func randomIncrementAndCountEven() {
            let num = arc4random() % 10 + 1
            print(num)
            total += num
            if num % 2 == 0 {
                even += 1
            }
        }
        
        // 定義した関数を3回呼び出す
        randomIncrementAndCountEven()
        randomIncrementAndCountEven()
        randomIncrementAndCountEven()
        
        print()
        print(total)
        print(even)
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

