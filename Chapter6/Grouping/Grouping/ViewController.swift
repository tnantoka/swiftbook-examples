//
//  ViewController.swift
//  Grouping
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
        let scores = [10, 80, 70, 30, 50, 20, 90, 60]
        let average = 60
        
        let groups = Dictionary(grouping: scores) { score in
            score > average ? "平均点より上" : "平均点以下"
        }
        print(groups)
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

