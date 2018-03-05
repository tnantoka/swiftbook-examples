//
//  ViewController.swift
//  Compare
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
        class IPhone {
            var model = "iPhone 8"
        }
        
        let phone1 = IPhone()
        let phone2 = IPhone()
        let phone3 = phone1
        print(phone1 === phone2)
        print(phone1 === phone3)
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

