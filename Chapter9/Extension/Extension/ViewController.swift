//
//  ViewController.swift
//  Extension
//
//  Created by Tatsuya Tobioka on 2017/11/29.
//  Copyright © 2017 tnantoka. All rights reserved.
//

import UIKit

/// [marker1]
class IPhone {
    var model = "iPhone 8"
}

extension IPhone {
    var description: String {
        return "このiPhoneのモデルは\(model)です"
    }
}
/// [marker1]

/// [marker2]
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let phone = IPhone()
        print(phone)
    }
}
/// [marker2]
