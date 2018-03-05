//
//  ViewController.swift
//  GuardFor
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
        for i in 0..<10 {
            guard i > 4 else { // 4以下の場合は処理しない
                continue
            }
            guard i < 8 else { // 8以上になったらループを抜ける
                break
            }
            print(i)
        }
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

