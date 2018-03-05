//
//  ViewController.swift
//  EmptyRange
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
        let range1 = 0...0
        let range2 = 0..<0
        
        print(range1.contains(0))
        print(range1.isEmpty)
        
        print(range2.contains(0))
        print(range2.isEmpty)
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

