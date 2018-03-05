//
//  ViewController.swift
//  Optionals
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
        let text1: String = "text"       // OK
        let text2: String = nil          // NG: Nil cannot be assigned to type 'String'
        
        let text3: String? = "text"      // OK
        let text4: String? = nil         // OK
        
        let texts = ["a", "b", "c"]
        let first1: String = texts.first  // NG: Value of optional type 'String?' not unwrapped;
        let first2: String? = texts.first // OK
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

