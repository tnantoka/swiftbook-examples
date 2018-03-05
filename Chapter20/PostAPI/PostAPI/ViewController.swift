//
//  ViewController.swift
//  PostAPI
//
//  Created by Tobioka on 2017/10/08.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

/// [marker1]
import WebKit
/// [marker1]

class ViewController: UIViewController {

    /// [marker2]
    @IBOutlet weak var webView: WKWebView!
    /// [marker2]

    /// [marker3]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let url = URL(string: "https://api.github.com/markdown") else { return }
        
        var req = URLRequest(url: url)                                    // リクエストを作成
        req.httpMethod = "POST"                                           // POST形式に指定

        let markdown = """
                       # 見出し
                       - アイテム1
                       - アイテム2
                       """
        let json = [
            "text": markdown
        ]
        req.httpBody = try? JSONSerialization.data(withJSONObject: json)  // 送信するデータ

        let task = URLSession.shared.dataTask(with: req) { data, response, error in
            guard let data = data,
                let html = String(data: data, encoding: .utf8) else {
                    return
            }
            DispatchQueue.main.async {
                self.webView.loadHTMLString(html, baseURL: nil)           // Web Viewを更新
            }
        }
        task.resume()
    }
    /// [marker3]

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

