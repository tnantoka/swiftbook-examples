//
//  ViewController.swift
//  ValueType
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
        class UserClass {
            var name: String = ""
        }
        
        struct UserStruct {
            var name: String = ""
        }
        
        var user1 = UserClass()
        user1.name = "name1"
        var user2 = user1
        user2.name = "name2"
        
        var user3 = UserStruct()
        user3.name = "name3"
        var user4 = user3
        user4.name = "name4"
        
        var user5 = ""
        user5 = "name5"
        var user6 = user5
        user6 = "name6"
        
        print(user1.name)
        print(user2.name)
        print(user3.name)
        print(user4.name)
        print(user5)
        print(user6)
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

