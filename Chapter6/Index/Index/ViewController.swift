//
//  ViewController.swift
//  Index
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
        let info = [
            "width": 200,
            "height": 100,
            "fontSize": 16
        ]
        let index1 = info.index(forKey: "width")
        let index2 = info.index { element in element.value == 100 }
        
        print(info[index1!])
        print(info[index2!])
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

