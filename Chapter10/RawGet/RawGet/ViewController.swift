//
//  ViewController.swift
//  RawGet
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
        enum Phone: String {
            case iPhone8 = "iPhone 8"
            case iPhone8Plus = "iPhone 8 Plus"
            case iPhoneSE = "iPhone SE"
        }
        
        print(Phone.iPhone8.rawValue)
        print(Phone.iPhone8Plus.rawValue)
        print(Phone.iPhoneSE.rawValue)
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

