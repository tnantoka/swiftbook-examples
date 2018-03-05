//
//  ViewController.swift
//  ProgrammaticallyProgress
//
//  Created by Tobioka on 2017/10/29.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /// [marker1]
    let progress = UIProgressView(progressViewStyle: .default)
    /// [marker1]
    
    /// [marker2]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        progress.frame.origin = CGPoint(x: 10.0, y: 30.0)
        view.addSubview(progress)
        
        let downButton = UIButton(type: .system)
        downButton.frame = CGRect(x: progress.frame.minX, y: progress.frame.maxY + 8.0, width: 50.0, height: 30.0)
        downButton.setTitle("減らす", for: .normal)
        downButton.addTarget(self, action: #selector(onTapDown), for: .touchUpInside)
        view.addSubview(downButton)
        
        let upButton = UIButton(type: .system)
        upButton.frame = CGRect(x: progress.frame.maxX - 50.0, y: progress.frame.maxY + 8.0, width: 50.0, height: 30.0)
        upButton.setTitle("増やす", for: .normal)
        upButton.addTarget(self, action: #selector(onTapUp), for: .touchUpInside)
        view.addSubview(upButton)

    }
    /// [marker2]
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /// [marker3]
    @objc func onTapDown(sender: Any) {
        progress.progress -= 0.1
    }
    
    @objc func onTapUp(sender: Any) {
        progress.progress += 0.1
    }
    /// [marker3]


}

