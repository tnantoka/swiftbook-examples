//
//  ViewController.swift
//  UpdateValue
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
        var info = [
            "width": 200,
            "height": 100,
            "fontSize": 16
        ]
        
        func addOrUpdate(_ newValue: Int, forKey key: String) {
            if let oldValue = info.updateValue(newValue, forKey: key) {
                print("\(key)を\(oldValue)から\(newValue)に変更しました")
            } else {
                print("\(key)に\(newValue)を追加しました")
            }
        }
        
        addOrUpdate(400, forKey: "width")
        addOrUpdate(2, forKey: "border")
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

