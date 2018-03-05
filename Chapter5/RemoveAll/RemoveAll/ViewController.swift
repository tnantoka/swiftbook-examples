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
        var numbers1 = [1, 2, 3]
        numbers1.removeAll()
        
        var numbers2 = [1, 2, 3]
        numbers2 = []
        
        print(numbers1)
        print(numbers2)
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

