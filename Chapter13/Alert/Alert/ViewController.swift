//
//  ViewController.swift
//  Alert
//
//  Created by Tobioka on 2017/10/22.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /// [marker1]
    @IBAction func onTap(_ sender: Any) {
        let alertController = UIAlertController(
            title: "背景色を変更",
            message: "よろしいですか？",
            preferredStyle: .alert
        )
        // キャンセルボタン
        alertController.addAction(
            UIAlertAction(
                title: "キャンセル",
                style: .cancel,
                // ボタンを押した時に何も行わないのでnilを設定
                handler: nil
            )
        )
        // OKボタン
        alertController.addAction(
            UIAlertAction(
                title: "OK",
                style: .default,
                // ボタンを押した時に行なう処理
                handler: { action in
                    self.view.backgroundColor = .lightGray
                }
            )
        )
        present(alertController, animated: true, completion: nil)
    }
    /// [marker1]
}

