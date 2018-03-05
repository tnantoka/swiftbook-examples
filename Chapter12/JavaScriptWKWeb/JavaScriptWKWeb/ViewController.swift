//
//  ViewController.swift
//  JavaScriptWKWeb
//
//  Created by Tobioka on 2017/11/12.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    
    /// [marker1]
    let html = """
               <!DOCTYPE html>
               <meta name="viewport" content="width=device-width">
               <title>アラートサンプル</title>
               <a href="javascript: alert('アラート')">アラートを表示</a>
               """
    /// [marker1]

    /// [marker2]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView.uiDelegate = self
        
        webView.loadHTMLString(html, baseURL: nil)
    }
    /// [marker2]

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

/// [marker3]
extension ViewController: WKUIDelegate {
    func webView(_ webView: WKWebView, runJavaScriptAlertPanelWithMessage message: String, initiatedByFrame frame: WKFrameInfo, completionHandler: @escaping () -> Void) {
        let alertController = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        alertController.addAction(
            UIAlertAction(
                title: "OK",
                style: .default,
                handler: { _ in
                    completionHandler()
                }
            )
        )
        present(alertController, animated: true, completion: nil)
    }
}
/// [marker3]
