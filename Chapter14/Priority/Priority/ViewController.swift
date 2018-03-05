//
//  ViewController.swift
//  Priority
//
//  Created by Tatsuya Tobioka on 2017/12/10.
//  Copyright © 2017 tnantoka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /// [marker1]
    @IBOutlet weak var firstWidth: NSLayoutConstraint!
    @IBOutlet weak var secondWidth: NSLayoutConstraint!
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
    @IBAction func onTap(_ sender: Any) {
        if firstWidth.priority == .defaultHigh {
            firstWidth.priority = .defaultLow
        } else {
            firstWidth.priority = .defaultHigh
        }

        if secondWidth.priority == .defaultHigh {
            secondWidth.priority = .defaultLow
        } else {
            secondWidth.priority = .defaultHigh
        }
    }
    /// [marker2]
}

