//
//  ViewController.swift
//  ProgrammaticallyActivity
//
//  Created by Tobioka on 2017/10/29.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /// [marker1]
    let activity = UIActivityIndicatorView(activityIndicatorStyle: .gray)
    /// [marker1]

    /// [marker2]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        activity.hidesWhenStopped = false
        activity.frame.origin = CGPoint(x: 10.0, y: 20.0)
        view.addSubview(activity)
        
        let button = UIButton(type: .system)
        button.frame = CGRect(x: 10.0, y: activity.frame.maxY + 8.0, width: 150.0, height: 30.0)
        button.setTitle("スタート・ストップ", for: .normal)
        button.addTarget(self, action: #selector(onTap), for: .touchUpInside)
        view.addSubview(button)
    }
    /// [marker2]
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /// [marker3]
    @objc func onTap(sender: Any) {
        if activity.isAnimating {
            activity.stopAnimating()
        } else {
            activity.startAnimating()
        }
    }
    /// [marker3]


}

