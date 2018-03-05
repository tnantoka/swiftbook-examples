//
//  ViewController.swift
//  BitwiseNOT
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
        let bits1: UInt8 = 0b00000111
        let bits2: UInt8 = 7
        let not1 = ~bits1
        let not2 = ~bits2
        
        print(bits1)
        print(bits2)
        print(not1)
        print(not2)
        print(not1 == 0b11111000)
        print(not2 == 0b11111000)
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

