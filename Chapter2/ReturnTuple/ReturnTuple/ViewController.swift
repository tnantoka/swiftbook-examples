//
//  ViewController.swift
//  ReturnTuple
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
        func getScore() -> (String, Int) {
            return ("国語", 90)
        }
        
        let (subject, point) = getScore()
        print(subject + "の点数は" + String(point) + "点です")
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

