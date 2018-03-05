//
//  ViewController.swift
//  PrefixSuffix
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
        let text = "text"
        print(text.hasPrefix("te"))
        print(text.hasPrefix("TE"))
        print(text.hasSuffix("xt"))
        print(text.hasSuffix("XT"))
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

