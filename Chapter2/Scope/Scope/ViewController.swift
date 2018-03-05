//
//  ViewController.swift
//  Scope
//
//  Created by Tatsuya Tobioka on 2017/11/29.
//  Copyright © 2017 tnantoka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /// [marker1]
    override func viewDidLoad() {
        super.viewDidLoad()

        let test = "テスト"
        print(test)
    }

    override func didReceiveMemoryWarning() {
        print(test) // Use of unresolved identifier 'test'
    }
    /// [marker1]
}

