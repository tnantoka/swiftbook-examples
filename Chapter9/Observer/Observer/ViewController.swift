//
//  ViewController.swift
//  Observer
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
            var histories = [String]()
            var model = "iPhone 8" {
                willSet {
                    histories.append("\(model)から\(newValue)に変更されます")
                }
                didSet {
                    histories.append("\(model)に変更されました")
                }
            }
        }
        
        let phone = IPhone()
        phone.model = "iPhone 8 Plus"
        print(phone.histories.joined(separator: "\n"))
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

