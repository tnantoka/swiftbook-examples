//
//  ViewController.swift
//  GuardPrint
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
        func generateRandomNumber(max: UInt32) -> UInt32 {
            guard max > 0 else {
                print("maxに1以下の数字は指定できません") // 'guard' body may not fall through, consider using a 'return' or 'throw' to exit the scope
            }
            return arc4random() % max + 1
        }
        
        print(generateRandomNumber(max: 0))
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

