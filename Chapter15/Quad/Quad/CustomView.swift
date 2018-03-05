//
//  CustomView.swift
//  Quad
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
        path.addQuadCurve(
            to: CGPoint(x: 320.0, y: 80.0),
            controlPoint: CGPoint(x: 170.0, y: 20.0)
        )
        UIColor.lightGray.setStroke()
        path.lineWidth = 5.0
        path.stroke()
        /// [marker1]
    }
}
