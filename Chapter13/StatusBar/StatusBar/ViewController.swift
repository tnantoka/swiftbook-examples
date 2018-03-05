//
//  ViewController.swift
//  StatusBar
//
//  Created by Tobioka on 2017/10/21.
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
    var style = UIStatusBarStyle.default

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return style // styleプロパティの内容をそのまま使う
    }

    @IBAction func onTapStyle(_ sender: Any) {
        style = style == .default ? .lightContent : .default // styleプロパティを交互に切り替え
        setNeedsStatusBarAppearanceUpdate()                  // ステータスバーの変更を適用
    }
    /// [marker1]
    
    /// [marker2]
    var hidden = false
    
    override var prefersStatusBarHidden: Bool {
        return hidden
    }
    
    @IBAction func onTapHidden(_ sender: Any) {
        hidden = !hidden
        setNeedsStatusBarAppearanceUpdate()
    }
    /// [marker2]
}

