//
//  ViewController.swift
//  ActionSheet
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
    @IBAction func onTap(_ sender: UIButton) {
        let alertController = UIAlertController(
            title: "アクションシート",
            message: "選択してください",
            preferredStyle: .actionSheet // アラートと違う設定
        )
        alertController.addAction(
            UIAlertAction(
                title: "キャンセル",
                style: .cancel,
                handler: nil
            )
        )
        alertController.addAction(
            UIAlertAction(
                title: "選択肢1",
                style: .default,
                handler: { action in
                    sender.setTitle("1を選択", for: .normal)
                }
            )
        )
        alertController.addAction(
            UIAlertAction(
                title: "危険な操作",
                style: .destructive, // 危険な選択肢に指定するスタイル
                handler: { action in
                    sender.setTitle("危険な操作を選択", for: .normal)
                }
            )
        )
        present(alertController, animated: true, completion: nil)

    }
    /// [marker1]

}

