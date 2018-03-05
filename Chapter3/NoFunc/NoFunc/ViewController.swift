//
//  ViewController.swift
//  NoFunc
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
        
        // 1つめの数字
        let num1 = arc4random() % 10 + 1
        print(num1)
        total += num1
        if num1 % 2 == 0 {
            even += 1
        }
        
        // 2つめの数字
        let num2 = arc4random() % 10 + 1
        print(num2)
        total += num2
        if num2 % 2 == 0 {
            even += 1
        }
        
        // 3つめの数字
        let num3 = arc4random() % 10 + 1
        print(num3)
        total += num3
        if num3 % 2 == 0 {
            even += 1
        }
        
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

