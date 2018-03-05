//
//  ViewController.swift
//  KeychainAccessExample
//
//  Created by Tobioka on 2017/10/15.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

/// [marker1]
import KeychainAccess
/// [marker1]

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /// [marker2]
    let keychain = Keychain() // 複数のメソッドで使うのでプロパティとしてインスタンスを作成

    @IBAction func onTapSave(_ sender: Any) {
        guard let text = textField.text, !text.isEmpty else { return }
        keychain["secret"] = text // "secret"をキーとしてテキストを保存
    }
    /// [marker2]

    /// [marker4]
    @IBAction func onTapRemove(_ sender: Any) {
        keychain["secret"] = nil // "secret"をキーと保存された情報を削除
    }
    /// [marker4]

    /*
    @IBAction func onTapRemove(_ sender: Any) {
        /// [marker5]
        keychain.remove("secret")
        /// [marker5]
    }
    */

    /// [marker3]
    @IBAction func onTapLoad(_ sender: Any) {
        label.text = keychain["secret"] // "secret"をキーとして保存された情報を取得
    }
    /// [marker3]
}

