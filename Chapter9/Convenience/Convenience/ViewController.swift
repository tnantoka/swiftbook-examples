//
//  ViewController.swift
//  Convenience
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
        class IPhone {
            let cover: String
            let covered: Bool
        
            init(cover: String, covered: Bool) {
                self.cover = cover
                self.covered = covered
            }
        
            convenience init(cover: String) {
                let covered = !cover.isEmpty
                self.init(cover: cover, covered: covered)
            }
        }
        
        print(IPhone(cover: "").covered)
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

