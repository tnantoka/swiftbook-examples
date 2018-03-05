//
//  ViewController.swift
//  Closure
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
        func printEach(preprocessor: (Int) -> Int) {
            print(preprocessor(1))
            print(preprocessor(2))
            print(preprocessor(3))
            print()
        }
        
        printEach { _ in 0 }
        printEach { $0 }
        printEach { $0 * 2 }
        printEach { $0 * 3 }
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

