//
//  ViewController.swift
//  Codable
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
        // Codableプロトコルに従うことを指定
        struct IPhone: Codable {
            let model: String
            let cover: String
        }
        
        // IPhoneクラスのインスタンスに変換したいJSON文字列
        let json = """
        {
          "model": "iPhone 8",
          "cover": "ソフトカバー"
        }
        """
        
        // JSON文字列をDataに変換
        if let data = json.data(using: .utf8) {
            // Dataに変換したJSONからIPhoneクラスのインスタンスを作成
            if let phone = try? JSONDecoder().decode(IPhone.self, from: data) {
                print("JSONから変換したIPhoneインスタンス")
                print(phone)
            }
        }
        
        print()
        
        // JSON文字列を変換したいIPhoneインスタンス
        let phone = IPhone(model: "iPhone 8 Plus", cover: "ハードカバー")
        
        // インスタンスをJSON Dataに変換
        if let data = try? JSONEncoder().encode(phone) {
            // Dataから文字列に変換
            if let string = String(data: data, encoding: .utf8) {
                print("IPhoneインスタンスから変換したJSON")
                print(string)
            }
        }
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

