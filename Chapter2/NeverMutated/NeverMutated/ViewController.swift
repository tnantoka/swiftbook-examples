//
//  ViewController.swift
//  NeverMutated
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
        var price = 2800.0
        price = price - 800
        var taxRate = 1.08 // Variable 'taxRate' was never mutated; consider changing to 'let' constant
        let taxIn = price * taxRate
        
        print(taxIn)
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

