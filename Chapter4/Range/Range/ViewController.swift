//
//  ViewController.swift
//  Range
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
        let text = "3566-0020-2036-0505"
        let start = text.startIndex
        
        let range1 = start...text.index(start, offsetBy: 4)
        let range2 = start..<text.index(start, offsetBy: 4)
        let range3 = text.index(start, offsetBy: 14)...
        let range4 = ...text.index(start, offsetBy: 4)
        let range5 = ..<text.index(start, offsetBy: 4)
        
        print(text[range1])
        print(text[range2])
        print(text[range3])
        print(text[range4])
        print(text[range5])
        
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

