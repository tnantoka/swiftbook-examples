//
//  ViewController.swift
//  Programmatically
//
//  Created by Tatsuya Tobioka on 2018/01/21.
//  Copyright © 2018 tnantoka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var subView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        /// [marker1]
        subView.translatesAutoresizingMaskIntoConstraints = false
        let views: [String: Any] = ["subView": subView]
        let vertical = NSLayoutConstraint.constraints(
            withVisualFormat: "V:|-[subView(100)]",
            options: [], metrics: nil, views: views
        )
        let horizontal = NSLayoutConstraint.constraints(
            withVisualFormat: "H:|-[subView]-|",
            options: [], metrics: nil, views: views
        )
        NSLayoutConstraint.activate(vertical + horizontal)
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

