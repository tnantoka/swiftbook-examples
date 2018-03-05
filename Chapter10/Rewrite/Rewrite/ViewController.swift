//
//  ViewController.swift
//  Rewrite
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
        enum Phone {
            case iPhone8, iPhone8Plus, iPhoneSE
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
        
        print(size(of: Phone.iPhone8))
        print(size(of: .iPhone8))
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

