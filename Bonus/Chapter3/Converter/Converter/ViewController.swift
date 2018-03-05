//
//  ViewController.swift
//  Converter
//
//  Created by Tobioka on 2017/10/14.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /// [marker1]
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    /// [marker1]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        convert4()
    }
    
    func convert1() {
        /// [marker2]
        if let text = textField.text {
            label.text = text.uppercased()
        }
        /// [marker2]
    }
    
    func convert2() {
        /// [marker3]
        if let text = textField.text {
            if text.isEmpty {
                label.text = "テキストを入力してください"
            } else {
                label.text = text.uppercased()
            }
        }
        /// [marker3]
    }
    
    func convert3() {
        /// [marker4]
        guard let text = textField.text else { return }
        guard text.isEmpty else {
            label.text = "テキストを入力してください"
            return
        }
        label.text = text.uppercased()
        /// [marker4]
    }
    
    func convert4() {
        /// [marker5]
        guard let text = textField.text else { return }
        guard !text.isEmpty else {
            label.text = "テキストを入力してください"
            return
        }
        label.text = text.uppercased()
        /// [marker5]
    }
}

