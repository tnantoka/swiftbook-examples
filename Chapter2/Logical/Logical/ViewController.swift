//
//  ViewController.swift
//  Logical
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
        let a = true
        let b = false
        
        print(!a) // false
        print(!b) // true
        
        print(a && a) // true
        print(a && b) // false
        print(b && b) // false
        
        print(a || a) // true
        print(a || b) // true
        print(b || b) // false
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

