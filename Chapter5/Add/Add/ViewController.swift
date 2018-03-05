//
//  ViewController.swift
//  Add
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
        let array1 = ["おはよう", "こんにちは"]
        let array2 = ["こんばんは", "おやすみ"]
        let array3 = array1 + array2
        
        print(array1)
        print(array2)
        print(array3)
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

