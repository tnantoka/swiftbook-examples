//
//  ViewController.swift
//  Compound
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
        var a = 5
        
        a += 1
        print(a)
        
        a -= 1
        print(a)
        
        a *= 2
        print(a)
        
        a /= 2
        print(a)
        
        a %= 2
        print(a)
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

