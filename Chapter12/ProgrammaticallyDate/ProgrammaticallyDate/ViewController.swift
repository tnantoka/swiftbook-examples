//
//  ViewController.swift
//  ProgrammaticallyDate
//
//  Created by Tobioka on 2017/10/30.
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
        
        let picker = UIDatePicker(
            frame: CGRect(x: 0.0, y: 20.0, width: view.bounds.width, height: 160.0)
        )
        picker.addTarget(self, action: #selector(onChange), for: .valueChanged)
        view.addSubview(picker)
        
        label = UILabel(
            frame: CGRect(x: 0.0, y: picker.frame.maxY + 8.0, width: view.bounds.width, height: 30.0)
        )
        label.textAlignment = .center
        view.addSubview(label)
    }
    /// [marker2]

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /// [marker3]
    @objc func onChange(_ sender: UIDatePicker) {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .long
        label.text = formatter.string(from: sender.date)
    }
    /// [marker3]


}

