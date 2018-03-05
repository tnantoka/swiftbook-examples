//
//  ViewController.swift
//  Comment
//
//  Created by Tobioka on 2017/10/14.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /// [marker1]
    var count = 0
    /// [marker1]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /// [marker2]
    // MARK: - カウンター関連処理
    
    func increment() {
        count += 1
    }

    func decrement() {
        // FIXME: -=を使う
        count = count - 1
    }

    func reset() {
        // TODO: リセット
    }
    /// [marker2]
}

