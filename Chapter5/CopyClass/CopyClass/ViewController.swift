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
        
        var objects1 = [user1, user2]
        var objects2 = objects1
        
        objects1[0].name = "ティム"
        print(objects1.map { user in user.name })
        print(objects2.map { user in user.name })
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

