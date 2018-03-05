//
//  ViewController.swift
//  Reversed
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
        let numbers = [1, 2, 3]
        let strings = ["あ", "い", "う"]
        
        for n in numbers.reversed() {
            print(n)
        }
        for s in strings.reversed() {
            print(s)
        }
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

