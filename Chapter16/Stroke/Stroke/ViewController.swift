//
//  ViewController.swift
//  Stroke
//
//  Created by Tobioka on 2017/10/25.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

/// [marker1]
import GLKit
/// [marker1]

class ViewController: UIViewController {

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

        // 半径100の円を表すパス作成する
        let path = UIBezierPath()
        path.addArc(
            withCenter: view.center,
            radius: 100.0,
            startAngle: 0.0,
            endAngle: CGFloat(GLKMathDegreesToRadians(360.0)),
            clockwise: true                                   // 時計回りにするか
        )

        // pathを描画するレイヤーを作成
        let layer = CAShapeLayer()
        layer.fillColor = UIColor.clear.cgColor
        layer.strokeColor = UIColor.lightGray.cgColor
        layer.lineWidth = 20.0
        layer.lineCap = kCALineCapRound
        layer.path = path.cgPath

        // strokeEndを変化させるアニメーションを作成
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        animation.duration = 5.0
        animation.fromValue = 0.0
        animation.toValue = 1.0
        animation.repeatCount = .infinity

        view.layer.addSublayer(layer)     // ビューにレイヤーを追加
        layer.add(animation, forKey: nil) // アニメーションをレイヤーに追加
    }
    /// [marker2]
}

