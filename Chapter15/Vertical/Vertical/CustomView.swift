//
//  CustomView.swift
//  Vertical
//
//  Created by Tobioka on 2017/10/25.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

class CustomView: UIView {

    override func draw(_ rect: CGRect) {
        /// [marker1]
        guard let context = UIGraphicsGetCurrentContext() else { return }
        guard let gradient = CGGradient(
            colorsSpace: CGColorSpaceCreateDeviceRGB(),
            colors: [UIColor.black.cgColor, UIColor.white.cgColor] as CFArray,
            locations: [0.0, 1.0]
        ) else { return }
        context.drawLinearGradient(
            gradient,
            start: CGPoint(x: 0.0, y: rect.midY),
            end: CGPoint(x: rect.maxX, y: rect.midY),
            options: []
        )
        /// [marker1]
    }

}
