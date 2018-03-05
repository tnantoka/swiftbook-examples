//
//  CustomView.swift
//  Shape
//
//  Created by Tobioka on 2017/10/25.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

class CustomView: UIView {

    /// [marker1]
    override func draw(_ rect: CGRect) {
        UIColor.lightGray.setFill()
        UIColor.black.setStroke()
        
        let path = UIBezierPath(
            rect: CGRect(x: 20.0, y: 30.0, width: 100.0, height: 100.0)
        )
        path.lineWidth = 3.0

        path.fill()
        path.stroke()
    }
    /// [marker1]

}
