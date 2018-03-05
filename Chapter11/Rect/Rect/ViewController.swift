//
//  ViewController.swift
//  Rect
//
//  Created by Tobioka on 2017/10/19.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /// [marker1]
    @IBOutlet weak var subView: UIView!
    /// [marker1]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        example1()
        example2()
        example3()
        example4()
        example5()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func example1() {
        /// [marker2]
        let rect = CGRect(x: 0.0, y: 0.0, width: 100.0, height: 100.0)
        print(rect)
        /// [marker2]
    }

    func example2() {
        /// [marker3]
        let rect = CGRect(
            origin: CGPoint(x: 0.0, y: 0.0),
            size: CGSize(width: 100.0, height: 100.0)
        )
        print("rect: \(rect)")
        print("origin: \(rect.origin)")
        print("x: \(rect.origin.x)")
        print("y: \(rect.origin.y)")
        print("size: \(rect.size)")
        print("width: \(rect.size.width)")
        print("height: \(rect.size.height)")
        /// [marker3]
    }

    func example3() {
        /// [marker4]
        print(subView.frame)
        /// [marker4]
    }
    
    func example4() {
        /// [marker5]
        print(subView.bounds)
        /// [marker5]
    }
    
    func example5() {
        /// [marker6]
        print("frame.minX: \(subView.frame.minX)")
        print("frame.midX: \(subView.frame.midX)")
        print("frame.maxX: \(subView.frame.maxX)")
        print("frame.minY: \(subView.frame.minY)")
        print("frame.midY: \(subView.frame.midY)")
        print("frame.maxY: \(subView.frame.maxY)")
        
        print("bounds.minX: \(subView.bounds.minX)")
        print("bounds.midX: \(subView.bounds.midX)")
        print("bounds.maxX: \(subView.bounds.maxX)")
        print("bounds.minY: \(subView.bounds.minY)")
        print("bounds.midY: \(subView.bounds.midY)")
        print("bounds.maxY: \(subView.bounds.maxY)")
        /// [marker6]
    }
}

