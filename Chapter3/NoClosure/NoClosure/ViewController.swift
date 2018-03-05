//
//  ViewController.swift
//  NoClosure
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
        
        func zero(x: Int) -> Int {
            return 0
        }
        
        func single(x: Int) -> Int {
            return x
        }
        
        func double(x: Int) -> Int {
            return x * 2
        }
        
        func triple(x: Int) -> Int {
            return x * 3
        }
        
        printEach(preprocessor: zero)
        printEach(preprocessor: single)
        printEach(preprocessor: double)
        printEach(preprocessor: triple)
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

