//
//  ViewController.swift
//  RawInit
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
        
        func size(of phone: Phone) -> Double {
            switch phone {
            case .iPhone8:
                return 4.7
            case .iPhone8Plus:
                return 5.5
            case .iPhoneSE:
                return 4.0
            }
        }
        
        let input1 = "iPhone 8" // ユーザーが入力した値
        let phone = Phone(rawValue: input1)!
        
        print(size(of: phone))
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

