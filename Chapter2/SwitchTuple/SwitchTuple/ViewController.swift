//
//  ViewController.swift
//  SwitchTuple
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
        let score = (100, 80, 75)
        switch score {
        case (100, 100, 100):
            print("全て満点です")
        case (100, _, _), (_, 100, _), (_, _, 100):
            print("1つ満点です")
        case (70..., 70..., 70...):
            print("全体的に高得点です")
        default:
            print("頑張りましょう")
        }
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

