//
//  ViewController.swift
//  Override
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
        class IOSDevice {
            let model: String
        
            init(model: String) {
                self.model = model
            }
        
            func info() -> String {
                return model
            }
        }
        
        class IPhone: IOSDevice {
            override func info() -> String {
                return "このiPhoneのモデルは\(model)です"
            }
        }
        
        let phone = IPhone(model: "iPhone 8")
        print(phone.info())
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

