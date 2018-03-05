//
//  ViewController.swift
//  GetHTML
//
//  Created by Tobioka on 2017/10/08.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /// [marker1]
    @IBOutlet weak var textView: UITextView!
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
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        guard let url = URL(string: "http://www.socym.co.jp/") else { return } // アクセスするURL
        
        let session = URLSession.shared                                        // デフォルトのセッションを取得
        let task = session.dataTask(with: url) { data, response, error in
            guard let data = data else { return }
            DispatchQueue.main.async {                                         // メインスレッドを呼び出し
                let text = String(data: data, encoding: .utf8)                 // 取得したデータを文字列化
                self.textView.text = text                                      // Text Viewに設定
            }
        }

        textView.text = "読み込み中…"
        task.resume()                                                          // タスクを開始
    }
    /// [marker2]
}

