//
//  ViewController.swift
//  Fallthrough
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
        let rank = "A"
        var star = ""
        switch rank {
        case "SS", "S":
            star += "★"
            fallthrough
        case "A":
            star += "★"
            fallthrough
        case "B":
            star += "★"
            fallthrough
        default:
            print(rank, star)
        }
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

