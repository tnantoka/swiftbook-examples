//
//  ViewController.swift
//  RemoveAll
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
        var integers1: Set = [1, 2, 3]
        var integers2: Set = [1, 2, 3]
        
        integers1.removeAll()
        integers2 = []
        
        print(integers1)
        print(integers2)
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

