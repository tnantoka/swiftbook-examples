//
//  ViewController.swift
//  MoreFormat
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
        print(String(format: "%%d   : %d", 1))
        print(String(format: "%%4d  : %4d", 1))
        print(String(format: "%%04d : %04d", 1))
        print(String(format: "%%f   : %f", 1.0))
        print(String(format: "%%.2f : %.2f", 1.0))
        print(String(format: "%%@   : %@", "text"))
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

