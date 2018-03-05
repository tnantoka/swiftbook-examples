//
//  ViewController.swift
//  Compare
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
        let numbers1 = [1, 3, 5]
        let numbers2 = numbers1
        let numbers3 = [1, 3, 5]
        let numbers4 = [1, 3, 4]
        
        print(numbers1 == numbers2)
        print(numbers1 == numbers3)
        print(numbers1 == numbers4)
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

