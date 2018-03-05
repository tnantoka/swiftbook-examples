//
//  ViewController.swift
//  Format
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
        let text1 = String(format: "text%03d", 1)
        let text2 = String(format: "text%03d", 20)
        print(text1)
        print(text2)
        
        let date = String(format: "%04d/%02d/%02d", 2018, 1, 1)
        print(date)
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

