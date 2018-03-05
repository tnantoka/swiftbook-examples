//
//  ViewController.swift
//  Animate
//
//  Created by Tobioka on 2017/10/25.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /// [marker1]
    @IBOutlet weak var subView: UIView!
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
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 3.0) {
            self.subView.frame.origin = CGPoint(x: 150.0, y: 150.0)
            self.subView.frame.size = CGSize(width: 200.0, height: 200.0)
        }
    }
    /// [marker2]

}

