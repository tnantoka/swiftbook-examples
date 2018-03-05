//
//  ViewController.swift
//  InitDictionary
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
        let info = Dictionary(dictionaryLiteral:
            ("width", 200),
            ("height", 100),
            ("fontSize", 16)
        )
        print(info)
        
        let info2 = Dictionary<String, Float>(dictionaryLiteral:
            ("width", 200.0),
            ("height", 100.0),
            ("fontSize", 16.0)
        )
        print(info2)
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

