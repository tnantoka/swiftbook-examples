//
//  ViewController.swift
//  ProgrammaticallySegmented
//
//  Created by Tobioka on 2017/10/29.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /// [marker1]
    var label: UILabel!
    /// [marker1]

    /// [marker2]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let segmented = UISegmentedControl(
            items: [
                "選択肢1",
                "選択肢2"
            ]
        )
        segmented.frame.origin = CGPoint(x: 10.0, y: 20.0)
        segmented.selectedSegmentIndex = 0
        segmented.addTarget(self, action: #selector(onChange), for: .valueChanged)
        view.addSubview(segmented)
        
        label = UILabel(
            frame: CGRect(x: 10.0, y: segmented.frame.maxY + 8.0, width: 150.0, height: 30.0)
        )
        view.addSubview(label)
    }
    /// [marker2]

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /// [marker3]
    @objc func onChange(sender: UISegmentedControl) {
        label.text = "\(sender.selectedSegmentIndex)を選択中"
    }
    /// [marker3]
}

