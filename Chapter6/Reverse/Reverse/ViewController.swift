//
//  ViewController.swift
//  Reverse
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
        let info = [
            "width": 200,
            "height": 100,
            "fontSize": 16
        ]
        let info2 = info.reversed()
        
        print("info")
        info.forEach { key, value in print("\(key): \(value)") }
        print("\ninfo2")
        info2.forEach { key, value in print("\(key): \(value)") }
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

