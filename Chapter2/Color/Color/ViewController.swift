//
//  ViewController.swift
//  Color
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
        let materialRed: UInt32 = 0xF44336
        
        let blueComponent = materialRed & 0x0000FF
        let greenComponent = (materialRed & 0x00FF00) >> 8
        let redComponent = (materialRed & 0xFF0000) >> 16
        
        print(redComponent, greenComponent, blueComponent)
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

