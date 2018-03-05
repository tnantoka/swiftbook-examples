//
//  ViewController.swift
//  NestedComment
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
        print(1) // 数値1を表示
        
        /*
        print(2) // 数値2を表示
        */
        
        print(3) // 数値3を表示
        
        // print(4) // 数値4を表示
        
        /*
        print(5) /* 数値5を表示 */
        */
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

