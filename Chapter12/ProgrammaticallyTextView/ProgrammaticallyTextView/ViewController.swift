//
//  ViewController.swift
//  ProgrammaticallyTextView
//
//  Created by Tobioka on 2017/10/28.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /// [marker1]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let textView = UITextView(
            frame: CGRect(x: 10.0, y: 20.0, width: 300.0, height: 200.0)
        )
        textView.backgroundColor = .lightGray
        view.addSubview(textView)
    }
    /// [marker1]

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

