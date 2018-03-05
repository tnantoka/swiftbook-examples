//
//  ViewController.swift
//  InitMethod
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
        enum Mode {
            case normal, hard
        
            init() {
                self = .normal
            }
        
            func showInfo() {
                print("[モード]", self == .normal ? "普通" : "難しい")
            }
        }
        
        Mode().showInfo()
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

