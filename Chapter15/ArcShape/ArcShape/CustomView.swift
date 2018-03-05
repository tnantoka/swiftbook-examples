//
//  CustomView.swift
//  ArcShape
//
//  Created by Tobioka on 2017/10/25.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

/// [marker1]
import GLKit
/// [marker1]

class CustomView: UIView {

    override func draw(_ rect: CGRect) {
        arc1()
        arc2()
    }
    
    func arc1() {
        /// [marker2]
        let path = UIBezierPath(
            arcCenter: CGPoint(x: 70.0, y: 80.0),
            radius: 50.0,
            startAngle: 0.0,
            endAngle: CGFloat(GLKMathDegreesToRadians(180.0)),
            clockwise: false                                   // 時計回りにするか
        )
        UIColor.lightGray.setFill()
        path.fill()
        /// [marker2]
    }
    
    func arc2() {
        /// [marker3]
        let path = UIBezierPath(
            arcCenter: CGPoint(x: 70.0, y: 200.0),
            radius: 50.0,
            startAngle: 0.0,
            endAngle: CGFloat(GLKMathDegreesToRadians(270.0)),
            clockwise: true                                   // 時計回りにするか
        )
        UIColor.lightGray.setFill()
        path.fill()
        /// [marker3]
    }

}
