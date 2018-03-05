//
//  ViewController.swift
//  Repeat
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
        let scores = [Int](repeating: 100, count: 3)
        print(scores)
        
        let categories = Array(repeating: "未分類", count: 2)
        print(categories)
        
        let floats = Array<Float>(repeating: 1.0, count: 4)
        print(floats)
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

