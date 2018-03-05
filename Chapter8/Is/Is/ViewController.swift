//
//  ViewController.swift
//  Is
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
        let numbers: [Any] = [1, 2, 3, 4.5, 5.5]
        var intCount = 0
        var doubleCount = 0
        
        for n in numbers {
            if n is Int {
                intCount += 1
            } else if n is Double {
                doubleCount += 1
            }
        }
        
        print(intCount)
        print(doubleCount)
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

