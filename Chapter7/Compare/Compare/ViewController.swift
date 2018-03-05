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
        let set1: Set = [1, 3, 5]
        let set2: Set = [1, 3, 5]
        let set3: Set = [2, 4, 6]
        let set4: Set = [1, 2, 3, 4, 5, 6]
        
        print("set1 == set2:", set1 == set2)
        print("set1 == set3:", set1 == set3)
        
        print("set1.isSubset(of: set2):", set1.isSubset(of: set2))
        print("set1.isSubset(of: set4):", set1.isSubset(of: set4))
        
        print("set1.isStrictSubset(of: set2):", set1.isStrictSubset(of: set2))
        print("set1.isStrictSubset(of: set4):", set1.isStrictSubset(of: set4))
        
        print("set2.isSuperset(of: set1):", set2.isSuperset(of: set1))
        print("set4.isSuperset(of: set1):", set4.isSuperset(of: set1))
        
        print("set2.isStrictSuperset(of: set1):", set2.isStrictSuperset(of: set1))
        print("set4.isStrictSuperset(of: set1):", set4.isStrictSuperset(of: set1))
        
        print("set1.isDisjoint(with: set3):", set1.isDisjoint(with: set3))
        print("set1.isDisjoint(with: set4):", set1.isDisjoint(with: set4))
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

