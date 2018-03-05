//
//  ViewController.swift
//  BasicWKWeb
//
//  Created by Tobioka on 2017/10/31.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

/// [marker1]
import WebKit
/// [marker1]

class ViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    
    /// [marker2]
    override func viewDidLoad() {
        super.viewDidLoad()

        let url = URL(string: "https://www.apple.com/jp/")!
        let req = URLRequest(url: url)
        webView.load(req)
    }
    /// [marker2]

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

