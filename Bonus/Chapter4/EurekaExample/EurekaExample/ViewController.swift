//
//  ViewController.swift
//  EurekaExample
//
//  Created by Tobioka on 2017/10/15.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

/// [marker1]
import Eureka
/// [marker1]

/// [marker2]
class ViewController: FormViewController {
/// [marker2]

    /// [marker3]
    override func viewDidLoad() {
        super.viewDidLoad()

        // タイトルを入力するRow（1行）
        let titleRow = TextRow { row in
            row.title = "タイトル"
            row.placeholder = "タイトルを入力"
        }

        // 本文を入力するRow（複数行）
        let bodyRow = TextAreaRow { row in
            row.placeholder = "本文を入力"
        }

        // 入力用のセクションを作ってRowを追加
        let section = Section()
        section.append(contentsOf: [
            titleRow,
            bodyRow
        ])

        form.append(contentsOf: [
            section
        ])
    }
    /// [marker3]

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /// [marker4]
    @IBAction func onTap(_ sender: Any) {
        let title = (form.allRows[0] as? TextRow)?.value ?? ""    // タイトルを取得
        let body = (form.allRows[1] as? TextAreaRow)?.value ?? "" // 本文を取得
        let message = """
                        title: \(title)
                        body: \(body)
                      """
        let alertController = UIAlertController(
            title: nil,
            message: message,
            preferredStyle: .alert
        )
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
    /// [marker4]
}

