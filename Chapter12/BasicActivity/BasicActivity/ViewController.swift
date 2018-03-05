//
//  ViewController.swift
//  BasicActivity
//
//  Created by Tobioka on 2017/10/29.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /// [marker1]
    @IBOutlet weak var activity: UIActivityIndicatorView!
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
        if activity.isAnimating {
            activity.stopAnimating()
        } else {
            activity.startAnimating()
        }
    }
    /// [marker2]

}

