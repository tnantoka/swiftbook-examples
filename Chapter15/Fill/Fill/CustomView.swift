//
//  CustomView.swift
//  Fill
//
//  Created by Tobioka on 2017/10/25.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

class CustomView: UIView {

    override func draw(_ rect: CGRect) {
        /// [marker1]
        let path = UIBezierPath(rect: rect)
        UIColor.lightGray.setFill()
        path.fill()
        /// [marker1]
    }

}
