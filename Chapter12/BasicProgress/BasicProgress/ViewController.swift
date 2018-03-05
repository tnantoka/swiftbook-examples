//
//  ViewController.swift
//  BasicProgress
//
//  Created by Tobioka on 2017/10/29.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /// [marker1]
    @IBOutlet weak var progress: UIProgressView!
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
    @IBAction func onTapDown(_ sender: Any) {
        progress.progress -= 0.1
    }

    @IBAction func onTapUp(_ sender: Any) {
        progress.progress += 0.1
    }
    /// [marker2]
}

