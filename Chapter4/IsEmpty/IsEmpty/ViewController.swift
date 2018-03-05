//
//  ViewController.swift
//  IsEmpty
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
        func hello(name: String) {
            if name.isEmpty {
                print("名前を入力してください")
            } else {
                print("名前の入力ありがとうございます")
            }
        }
        hello(name: "スティーブ")
        hello(name: "")
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

