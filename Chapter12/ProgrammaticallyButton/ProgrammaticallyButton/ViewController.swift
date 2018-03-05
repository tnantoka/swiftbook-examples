//
//  ViewController.swift
//  ProgrammaticallyButton
//
//  Created by Tobioka on 2017/10/04.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /// [marker1]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton(type: .system)            // システムボタン作成
        button.setTitle("タップしてください", for: .normal) // タイトル設定
        button.sizeToFit()                              // サイズを内容に合わせる
        button.center = view.center                     // 中央に配置
        button.addTarget(
            self,                                       // コントローラー自身を呼び出す
            action: #selector(onTap),                   // onTapメソッド
            for: .touchUpInside                         // ボタン内で指を話したら
        )
        view.addSubview(button)                         // viewに追加
    }
    /// [marker1]

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /// [marker2]
    @objc func onTap(sender: UIButton) {
        sender.setTitle("タップされました", for: .normal)  // タイトルを変更
    }
    /// [marker2]
}

