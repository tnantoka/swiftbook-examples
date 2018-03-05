//
//  ViewController.swift
//  OneSidedContains
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
        let closed1 = 0...
        let closed2 = ...3
        let halfOpen1 = ..<3
        
        print(closed1.contains(-1))
        print(closed1.contains(3))
        print(closed2.contains(-1))
        print(closed2.contains(3))
        print(halfOpen1.contains(-1))
        print(halfOpen1.contains(3))
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

