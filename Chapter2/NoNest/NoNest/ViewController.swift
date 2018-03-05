//
//  ViewController.swift
//  NoNest
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
        let num = 48
        if num % 2 == 0 && num % 3 == 0 {
            print("2と3の公倍数です")
        } else if num % 2 == 0 && num % 3 != 0 {
            print("2の倍数です")
        } else if num % 2 != 0 && num % 3 == 0 {
            print("2の倍数ではなく3の倍数です")
        } else if num % 2 != 0 && num % 3 != 0 {
            print("2の倍数でも3の倍数でもありません")
        }
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

