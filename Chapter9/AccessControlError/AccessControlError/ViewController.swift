//
//  ViewController.swift
//  AccessControlError
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
            private var cover = ""
        
            var covered: Bool {
                return !cover.isEmpty
            }
        
            func set(cover: String) {
                guard self.cover.isEmpty else {
                    return
                }
                self.cover = cover
            }
        }
        
        let phone = IPhone()
        phone.cover = "ハードカバー" // 'cover' is inaccessible due to 'private' protection level
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

