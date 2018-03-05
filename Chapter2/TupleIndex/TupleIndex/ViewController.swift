//
//  ViewController.swift
//  TupleIndex
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
        let student = (50821, "田中", "太郎")
        let score: (String, Float) = ("国語", 75.0)
        
        print(student.1)
        print(student.2)
        print(score.0)
        print(score.1)
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

