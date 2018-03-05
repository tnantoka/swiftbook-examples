//
//  ViewController.swift
//  SwiftIconFontExample
//
//  Created by Tobioka on 2017/10/15.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

/// [marker1]
import SwiftIconFont
/// [marker1]

class ViewController: UIViewController {

    /// [marker2]
    override func viewDidLoad() {
        super.viewDidLoad()

        // スマートフォンのアイコンを持つラベル
        let label = UILabel(
            frame: CGRect(x: 20.0, y: 80.0, width: 50.0, height: 50.0)
        )
        label.font = UIFont.icon(from: .FontAwesome, ofSize: 50.0)
        label.text = String.fontAwesomeIcon("mobile")
        view.addSubview(label)

        // ユーザーのアイコンを持つナビゲーションバーアイテム
        let navItem = UIBarButtonItem()
        navItem.icon(from: .FontAwesome, code: "user", ofSize: 20.0)
        navigationItem.rightBarButtonItem = navItem

        // カレンダーのアイコンを持つツールバーアイテム
        let toolItem = UIBarButtonItem()
        toolItem.icon(from: .FontAwesome, code: "calendar", ofSize: 20.0)
        toolbarItems = [toolItem]
    }
    /// [marker2]

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

