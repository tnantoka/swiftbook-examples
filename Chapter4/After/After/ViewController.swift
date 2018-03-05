//
//  ViewController.swift
//  After
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
        let text = "3566-0020-2036-0505"
        let start = text.startIndex
        let after = text.index(after: start)
        let offset = text.index(start, offsetBy: 4)
        print("2文字目: \(text[after])")
        print("5文字目: \(text[offset])")
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

