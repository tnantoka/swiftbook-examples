//
//  CustomView.swift
//  Oval
//
//  Created by Tobioka on 2017/10/25.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

class CustomView: UIView {

    override func draw(_ rect: CGRect) {
        oval1()
        oval2()
    }
    
    func oval1() {
        /// [marker1]
        let path = UIBezierPath(
            ovalIn: CGRect(x: 20.0, y: 30.0, width: 50.0, height: 100.0)
        )
        UIColor.lightGray.setFill()
        path.fill()
        /// [marker1]
    }
    
    func oval2() {
        /// [marker2]
        let path = UIBezierPath(
            ovalIn: CGRect(x: 20.0, y: 150.0, width: 100.0, height: 100.0)
        )
        UIColor.lightGray.setFill()
        path.fill()
        /// [marker2]
    }

}
