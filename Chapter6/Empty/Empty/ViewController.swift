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
        let info: [String: Int] = [:]
        print(info.isEmpty)
        print(info)
        
        let info2 = [String: Int]()
        print(info2.isEmpty)
        print(info2)
        
        let info3 = Dictionary<String, Int>()
        print(info3.isEmpty)
        print(info3)
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

