//
//  ViewController.swift
//  Count
//
//  Created by Tobioka on 2017/10/25.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /// [marker1]
    @IBOutlet weak var label: UILabel!
    /// [marker1]

    /// [marker2]
    let countKey = "countKey"
    var count: Int {
        get {
            // 保存されたカウントを返す
            return UserDefaults.standard.integer(forKey: countKey)
        }
        set {
            // 新しいカウントを保存する
            UserDefaults.standard.set(newValue, forKey: countKey)
            UserDefaults.standard.synchronize()
        }
    }
    /// [marker2]

    /// [marker3]
    override func viewDidLoad() {
        super.viewDidLoad()
        updateLabel()
    }
    /// [marker3]

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /// [marker4]
    func updateLabel() {
        label.text = String(count)
    }
    /// [marker4]

    /// [marker5]
    @IBAction func onTapUp(_ sender: Any) {
        count += 1
        updateLabel()
    }
    /// [marker5]

    /// [marker6]
    @IBAction func onTapDown(_ sender: Any) {
        count -= 1
        updateLabel()
    }
    /// [marker6]

}

