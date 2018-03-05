//
//  ViewController.swift
//  Computed
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
            var cover = "カバー"
            var isCovered: Bool {
                return !cover.isEmpty
            }
        }
        
        let phone1 = IPhone()
        print(phone1.isCovered)
        
        let phone2 = IPhone()
        phone2.cover = ""
        print(phone2.isCovered)
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

