//
//  ViewController.swift
//  Default
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
        func generateRandomNumber(max: UInt32 = 10) -> UInt32 {
            return arc4random() % max + 1
        }
        
        print(generateRandomNumber(max: 5))
        print(generateRandomNumber())
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

