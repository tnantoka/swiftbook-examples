//
//  CustomView.swift
//  Line
//
//  Created by Tobioka on 2017/10/25.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

class CustomView: UIView {

    override func draw(_ rect: CGRect) {
        line1()
        line2()
    }
    
    func line1() {
        /// [marker1]
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 20.0, y: 30.0))
        path.addLine(to: CGPoint(x: 120.0, y: 130.0))
        path.addLine(to: CGPoint(x: 220.0, y: 30.0))
        path.addLine(to: CGPoint(x: 320.0, y: 130.0))
        path.lineWidth = 15.0
        UIColor.lightGray.setStroke()
        path.stroke()
        /// [marker1]
    }
    
    func line2() {
        /// [marker2]
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 20.0, y: 150.0))
        path.addLine(to: CGPoint(x: 120.0, y: 250.0))
        path.addLine(to: CGPoint(x: 220.0, y: 150.0))
        path.addLine(to: CGPoint(x: 320.0, y: 250.0))
        path.lineWidth = 15.0
        path.lineJoinStyle = .round
        path.lineCapStyle = .round
        UIColor.lightGray.setStroke()
        path.stroke()
        /// [marker2]
    }

}
