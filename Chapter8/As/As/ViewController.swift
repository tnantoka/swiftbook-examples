//
//  ViewController.swift
//  As
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
        let numbers: [Any] = [1, 2, 3, 4.5, 5.5]
        var total = 0
        
        for n in numbers {
            if let int = n as? Int {
                total += 1
            } else if let double = n as? Double {
                let rounded = round(double)
                print(rounded)
                total += Int(rounded)
            }
        }
        
        print(total)
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

