//
//  ViewController.swift
//  JavaScriptUIWeb
//
//  Created by Tobioka on 2017/11/12.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
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
     
        webView.loadHTMLString(html, baseURL: nil)
    }
    /// [marker2]

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

