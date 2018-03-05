//
//  ViewController.swift
//  Ternary
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
        let num1 = 1
        let result1 = num1 % 2 == 1 ? "奇数です" : "偶数です"
        print(result1)
        
        let num2 = 0
        let result2 = num2 % 2 == 1 ? "奇数です" : num2 == 0 ? "0です" : "偶数です"
        print(result2)
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

