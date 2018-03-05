//
//  ViewController.swift
//  Switch
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
        let rank = "S"
        switch rank {
        case "SS", "S":
            print("大当たりです")
        case "A":
            print("中当たりです")
        case "B":
            print("普通です")
        default:
            print("外れです")
        }
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

