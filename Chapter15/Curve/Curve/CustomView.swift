//
//  CustomView.swift
//  Curve
//
//  Created by Tobioka on 2017/10/25.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

class CustomView: UIView {

    override func draw(_ rect: CGRect) {
        /// [marker1]
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 20.0, y: 80.0))
        path.addCurve(
            to: CGPoint(x: 320.0, y: 80.0),
            controlPoint1: CGPoint(x: 120.0, y: 20.0),
            controlPoint2: CGPoint(x: 220.0, y: 140.0)
        )
        UIColor.lightGray.setStroke()
        path.lineWidth = 5.0
        path.stroke()
        /// [marker1]
    }
}
