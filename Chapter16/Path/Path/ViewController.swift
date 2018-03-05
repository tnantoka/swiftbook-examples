//
//  ViewController.swift
//  Path
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

        // ビューを移動させるパスを作成
        let path = UIBezierPath()
        path.move(to: subView.center)
        path.addQuadCurve(
            to: CGPoint(x: subView.center.x, y: subView.center.y + view.center.y),
            controlPoint: CGPoint(x: subView.center.x + view.center.x, y: subView.center.y + view.center.y / 2.0))

        // パスに沿って移動するアニメーションを作成
        let animation = CAKeyframeAnimation(keyPath: "position")
        animation.path = path.cgPath
        animation.duration = 3.0
        animation.repeatCount = .infinity

        // subViewのレイヤーにアニメーションを追加
        subView.layer.add(animation, forKey: nil)
    }
    /// [marker2]

}

