//
//  ViewController.swift
//  MultilineComment
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
        /*
         * 税込価格を計算するプログラム
         * （単位は日本円）
         */
        let price = 2800.0
        let taxRate = 1.08
        let taxIn = price * taxRate
        
        print(taxIn)
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

