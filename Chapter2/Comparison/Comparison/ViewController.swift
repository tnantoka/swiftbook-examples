//
//  ViewController.swift
//  Comparison
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
        print(3 == 3) // true
        print(3 == 2) // false
        
        print(3 != 3) // false
        print(3 != 2) // true
        
        print(3 > 3) // false
        print(3 > 2) // true
        
        print(3 < 4) // true
        print(3 < 3) // false
        
        print(3 >= 4) // false
        print(3 >= 3) // true
        
        print(3 <= 3) // true
        print(3 <= 2) // false
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

