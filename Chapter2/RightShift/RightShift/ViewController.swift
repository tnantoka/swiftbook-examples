//
//  ViewController.swift
//  RightShift
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
        let bits: UInt8 = 0b00100000
        print(bits >> 1)
        print(bits >> 1 == 0b00010000)
        print(bits >> 2)
        print(bits >> 2 == 0b00001000)
        print(bits >> 3)
        print(bits >> 3 == 0b00000100)
        print(bits >> 4)
        print(bits >> 4 == 0b00000010)
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

