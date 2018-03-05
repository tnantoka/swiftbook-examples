
//
//  CustomView.swift
//  Rounded
//
//  Created by Tobioka on 2017/10/25.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

class CustomView: UIView {

    override func draw(_ rect: CGRect) {
        rounded1()
        rounded2()
    }

    func rounded1() {
        /// [marker1]
        let path = UIBezierPath(
            roundedRect: CGRect(x: 20.0, y: 30.0, width: 100.0, height: 100.0),
            cornerRadius: 20.0
        )
        UIColor.lightGray.setFill()
        path.fill()
        /// [marker1]
    }
    
    func rounded2() {
        /// [marker2]
        let path = UIBezierPath(
            roundedRect: CGRect(x: 20.0, y: 150.0, width: 100.0, height: 100.0),
            byRoundingCorners: [.topLeft, .bottomRight], // 左上・右下を角丸にする
            cornerRadii: CGSize(width: 20.0, height: 20.0)
        )
        UIColor.lightGray.setFill()
        path.fill()
        /// [marker2]
    }
}
