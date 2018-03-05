//
//  ViewController.swift
//  StringTypo
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
        func size(of phone: String) -> Double {
            switch phone {
            case "iPhone 8":
                return 4.7
            case "iPhone 8 Plus":
                return 5.5
            case "iPhone SE":
                return 4.0
            default:
                return 0.0
            }
        }
        
        print(size(of: "iphone 8"))
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

