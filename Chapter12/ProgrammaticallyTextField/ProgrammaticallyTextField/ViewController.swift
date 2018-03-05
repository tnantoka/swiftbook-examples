//
//  ViewController.swift
//  ProgrammaticallyTextField
//
//  Created by Tobioka on 2017/10/28.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /// [marker1]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let textField = UITextField(
            frame: CGRect(x: 10.0, y: 20.0, width: 150.0, height: 30.0)
        )
        textField.borderStyle = .roundedRect
        textField.addTarget(self, action: #selector(onExit), for: .editingDidEndOnExit)
        view.addSubview(textField)
    }
    /// [marker1]

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /// [marker2]
    @objc func onExit(sender: Any) {
    }
    /// [marker2]
}

