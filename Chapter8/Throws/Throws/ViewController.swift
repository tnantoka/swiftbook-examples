//
//  ViewController.swift
//  Throws
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
        
        // エラーを定義
        enum FileError: Error {
            case cannotLoad
        }
        
        // ファイル読み込み成功を想定
        func successfulLoad() throws -> String {
            return "読み込んだ内容1"
        }
        
        // ファイル読み込み失敗を想定
        func failedLoad() throws -> String {
            throw FileError.cannotLoad
            return "読み込んだ内容2"
        }
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

