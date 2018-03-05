//
//  ViewController.swift
//  OptionalArray
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
        let texts1: [String?] = ["test1", nil, "test2"]
        // let texts2: [String] = ["test1", nil, "test2"] // Nil is not compatible with expected element type 'String'
        texts1.forEach { print($0) }
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

