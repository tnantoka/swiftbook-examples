//
//  ViewController.swift
//  ForInDict
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
        let phones = [
            "iPhone 8": 4.7,
            "iPhone 8 Plus": 5.5,
            "iPhone X": 5.8,
            "iPhone SE": 4.0,
        ]
        for (name, size) in phones {
            print(name, size)
        }
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

