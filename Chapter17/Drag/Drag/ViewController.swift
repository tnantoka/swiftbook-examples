//
//  ViewController.swift
//  Drag
//
//  Created by Tobioka on 2017/10/25.
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
        let recognizer = UIPanGestureRecognizer(target: self, action: #selector(onPan))
        subView.addGestureRecognizer(recognizer)
    }
    /// [marker2]

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /// [marker3]
    @objc func onPan(recognizer: UIPanGestureRecognizer) {
        let point = recognizer.translation(in: view) // 変化を取得
        subView.frame.origin.x += point.x
        subView.frame.origin.y += point.y
        recognizer.setTranslation(.zero, in: view)   // 変化を0に戻す
    }
    /// [marker3]

}

