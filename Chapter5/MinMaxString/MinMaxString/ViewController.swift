//
//  ViewController.swift
//  MinMaxString
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
        let english = ["a", "b", "c", "A", "B", "C"]
        print(english.min())
        print(english.max())
        
        let japanese = ["ア", "イ", "ウ", "あ", "い", "う"]
        print(japanese.min())
        print(japanese.max())
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

