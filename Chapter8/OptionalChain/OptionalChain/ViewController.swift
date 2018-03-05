//
//  ViewController.swift
//  OptionalChain
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
            let name: String
            var child: User?
        
            init(name: String) {
                self.name = name
            }
        }
        let grandChild = User(name: "孫")
        
        let child = User(name: "子")
        child.child = grandChild
        
        let user1 = User(name: "孫を持つユーザー")
        user1.child = child
        let user2 = User(name: "孫を持たないユーザー")
        
        print(user1.child?.child?.name)
        print(user2.child?.child?.name)
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

