//
//  ViewController.swift
//  Range
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
        let integers1 = [Int](0...5)
        print(integers1)
        
        let integers2 = Array(0..<5)
        print(integers2)
        
        let integers3 = Array<Int>(-2...2)
        print(integers3)
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

