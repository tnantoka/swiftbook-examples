//
//  ViewController.swift
//  Inherit
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
        }
        
        class IPhone: IOSDevice {
            var isPlus: Bool {
                return model.hasSuffix("Plus")
            }
        }
        
        class IPad: IOSDevice {
            var isPro: Bool {
                return model.hasSuffix("Pro")
            }
        }
        
        let phone = IPhone(model: "iPhone 8")
        let pad = IPad(model: "iPad Pro")
        print(phone.isPlus)
        print(pad.isPro)
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

