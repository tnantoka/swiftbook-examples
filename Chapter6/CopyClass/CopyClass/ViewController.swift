//
//  ViewController.swift
//  CopyClass
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
        class User {
            var name: String
            init(name: String) {
                self.name = name
            }
        }
        let user1 = User(name: "スティープ")
        let user2 = User(name: "ジョニー")
        
        var info1 = [
            "user1": user1,
            "user2": user2
        ]
        var info2 = info1
        
        info1["user1"]?.name = "ティム"
        
        print("info1")
        info1.forEach { key, user in print("\(key): \(user.name)") }
        print("\ninfo2")
        info2.forEach { key, user in print("\(key): \(user.name)") }
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

