//
//  ViewController.swift
//  RemoveIndex
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
        var integers: Set = [1, 2, 3]
        var texts: Set = ["a", "b", "c"]
        
        let index1 = integers.index(of: 2)
        integers.remove(at: index1!)
        let index2 = texts.index(of: "c")
        texts.remove(at: index2!)
        
        print(integers)
        print(texts)
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

