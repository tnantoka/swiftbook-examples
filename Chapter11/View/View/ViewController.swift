//
//  ViewController.swift
//  View
//
//  Created by Tobioka on 2017/10/19.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /// [marker1]
    @IBOutlet weak var subView: UIView!
    /// [marker1]

    /// [marker2]
    override func viewDidLoad() {
        super.viewDidLoad()

        // ボーダー付きの親ビュー
        subView.frame.origin = CGPoint(x: 50.0, y: 100.0)
        subView.layer.borderColor = UIColor.black.cgColor
        subView.layer.borderWidth = 2.0
        
        // 角丸の親ビュー
        let subSubView = UIView(
            frame: CGRect(x: 10.0, y: 20.0, width: 50.0, height: 50.0)
        )
        subSubView.backgroundColor = .lightGray
        subSubView.layer.cornerRadius = 8.0
        subView.addSubview(subSubView)
    }
    /// [marker2]

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

