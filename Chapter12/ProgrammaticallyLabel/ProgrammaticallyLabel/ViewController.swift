//
//  ViewController.swift
//  ProgrammaticallyLabel
//
//  Created by Tobioka on 2017/10/05.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /// [marker1]
    override func viewDidLoad() {
        super.viewDidLoad()

        let label = UILabel()                        // ラベルを作成
        label.text = "テキスト"                        // テキストの設定
        label.font = UIFont.systemFont(ofSize: 26.0) // フォントの設定
        label.sizeToFit()                            // サイズを内容に合わせる
        label.center = view.center                   // 中央に配置
        view.addSubview(label)                       // viewに追加
    }
    /// [marker1]

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

