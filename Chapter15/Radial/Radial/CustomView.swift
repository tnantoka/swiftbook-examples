//
//  CustomView.swift
//  Radial
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
            colors: [UIColor.black.cgColor, UIColor(white: 0.9, alpha: 1.0).cgColor] as CFArray,
            locations: [0.0, 1.0]
        ) else { return }
        context.drawRadialGradient(
            gradient,
            startCenter: CGPoint(x: rect.midX, y: rect.midY),
            startRadius: 0.0,
            endCenter: CGPoint(x: rect.midX, y: rect.midY),
            endRadius: rect.midY,
            options: [.drawsAfterEndLocation]
        )
        /// [marker1]
    }

}
