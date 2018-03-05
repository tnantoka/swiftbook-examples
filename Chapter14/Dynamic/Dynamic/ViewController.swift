//
//  ViewController.swift
//  Dynamic
//
//  Created by Tobioka on 2017/10/24.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /// [marker1]
    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
    /// [marker1]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /// [marker2]
    @IBAction func onTap(_ sender: UIButton) {
        heightConstraint.constant = heightConstraint.constant == 30.0 ? 150.0 : 30.0
    }    
    /// [marker2]
}

