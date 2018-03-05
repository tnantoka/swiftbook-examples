//
//  ViewController.swift
//  ExtensionError
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
        // OK: 関数内でクラスを定義
        func classInFunc() {
            class IPhone {
                var model = "iPhone 8"
            }
        }
        
        // NG: 関数内でexntensionを定義
        func extensionInFunc() {
            class IPhone {
                var model = "iPhone 8"
            }
        
            // Declaration is only valid at file scope
            extension IPhone {
                var description: String {
                    return "このiPhoneのモデルは\(model)です"
                }
            }
        }
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

