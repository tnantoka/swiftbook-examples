//
//  ViewController.swift
//  TupleValue
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
        let student = (50821, "田中", "太郎")
        let score: (String, Float) = ("国語", 75.0)
        
        let (id, familyName, firstName) = student
        print(id)
        print(familyName)
        print(firstName)
        
        let (_, japanese) = score
        print(japanese)
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

