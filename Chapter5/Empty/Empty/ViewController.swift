//
//  ViewController.swift
//  Empty
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
        let empty: [Int] = []
        print(empty)
        print(empty.isEmpty)
        
        let empty2 = [Int]()
        print(empty2)
        print(empty2.isEmpty)
        
        let empty3 = Array<Int>()
        print(empty3)
        print(empty3.isEmpty)
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

