//
//  ViewController.swift
//  Type
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
        let test1 = 1
        let test2: UInt = 2
        let test3 = 3.0
        let test4: Float = 4.0
        print(type(of: test1))
        print(type(of: test2))
        print(type(of: test3))
        print(type(of: test4))
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

