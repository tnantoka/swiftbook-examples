//
//  ViewController.swift
//  Associated
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
        enum Info {
            case major(message: String, security: Bool)
            case minor(String)
        }
        
        func notify(_ info: Info) {
            print("お知らせ\n-------")
            switch info {
            case let .major(message, security):
                print("[重要]")
                print(message)
                if (security) {
                    print("セキュリティ関連の修正を含みます。すぐにアップデートしてください。")
                }
            case .minor(let message):
                print(message)
            }
            print()
        }
        
        let info1 = Info.major(message: "ソフトウェアアップデートがあります", security: true)
        let info2 = Info.major(message: "ソフトウェアアップデートがあります", security: false)
        let info3 = Info.minor("メンテナンスのお知らせ")
        
        notify(info1)
        notify(info2)
        notify(info3)
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

