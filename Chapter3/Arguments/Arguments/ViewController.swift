//
//  ViewController.swift
//  Arguments
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
        
        func generateRandomNumber() -> UInt32 {
            return arc4random() % 10 + 1
        }
        
        // 偶数を数える関数
        func countEven(num: UInt32) {
            if num % 2 == 0 {
                even += 1
            }
        }
        
        func randomIncrementAndCountEven() {
            let num = generateRandomNumber()
            print(num)
            total += num
            countEven(num: num) // 偶数を数える
        }
        
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

