//
//  ViewController.swift
//  ProgrammaticallyUIWeb
//
//  Created by Tobioka on 2017/10/31.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /// [marker1]
    override func viewDidLoad() {
        super.viewDidLoad()

        let webView = UIWebView(
            frame: CGRect(x: 16.0, y: 20.0, width: view.bounds.width - 32, height: 128.0)
        )
        view.addSubview(webView)
        
        let url = URL(string: "https://www.apple.com/jp/")!
        let req = URLRequest(url: url)
        webView.loadRequest(req)
    }
    /// [marker1]

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

