//
//  ViewController.swift
//  Class
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
        class IPhone {
            let model: String      // モデル名
            let owner: String      // オーナー
            var cover: String = "" // 付けているカバー
        
            // インスタンスの作成時に状態を設定する
            init(model: String, owner: String) {
                self.model = model
                self.owner = owner
            }
        
            // カバーを付ける
            func set(cover: String) {
                self.cover = cover
            }
        
            // 自分の情報を説明する
            func info() -> String {
                return "\(owner)の\(model) | \(cover)"
            }
        }
        
        let phone1 = IPhone(model: "iPhone 8", owner: "スティーブ")    // 1つめのiPhoneのデータ
        let phone2 = IPhone(model: "iPhone 8 Plus", owner: "ジョニー") // 2つめのiPhoneのデータ
        phone2.set(cover: "ソフトカバー")                               // 2つめのiPhoneにカバーを付ける
        
        print(phone1.info())                                         // 1つめのiPhoneの情報を表示
        print(phone2.info())                                         // 2つめのiPhoneの情報を表示
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

