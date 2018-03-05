//
//  ViewController.swift
//  IfBinding
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
        let text1: String? = "abc"
        if let text1 = text1 {
            print(text1 + "def")
        }
        
        let text2: String? = nil
        if let text2 = text2 {
            print(text2 + "ghi")
        }
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

