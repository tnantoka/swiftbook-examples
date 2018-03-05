//
//  ViewController.swift
//  SwitchWhere
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
        let paperSize = (300, 450)
        switch paperSize {
        case let (width, height) where width > height:
            print("横長の用紙です")
        case (let width, let height) where width < height:
            print("縦長の用紙です")
        default:
            print("正方形の用紙です")
        }
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

