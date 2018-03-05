//
//  ViewController.swift
//  NilCoalescing
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
        let text1: String? = "text"
        let text2 = text1 ?? "text1は空っぽです"
        
        let text3: String? = nil
        let text4 = text3 ?? "text3は空っぽです"
        
        print(text2)
        print(text4)
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

