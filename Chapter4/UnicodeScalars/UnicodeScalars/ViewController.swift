//
//  ViewController.swift
//  UnicodeScalars
//
//  Created by Tatsuya Tobioka on 2017/11/29.
//  Copyright © 2017 tnantoka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        /// [marker1]
        let text = "\u{2660}スペード"
        let code = text.unicodeScalars.first!.value // 1文字目のユニコードの番号を取得
        print(String(code, radix: 16))              // 16進数として表示
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

