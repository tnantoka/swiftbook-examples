//
//  ViewController.swift
//  Keyboard
//
//  Created by Tobioka on 2017/10/24.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /// [marker1]
    @IBOutlet weak var bottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var textView: UITextView!
    /// [marker1]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /// [marker2]
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        // キーボード表示・非表示の通知に反応するように
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(keyboardWillShow),
            name: .UIKeyboardWillShow,
            object: nil
        )
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(keyboardWillHide),
            name: .UIKeyboardWillHide,
            object: nil
        )
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        // ビューが表示されなくなったら不要なので設定を解除
        NotificationCenter.default.removeObserver(self, name: .UIKeyboardWillShow, object: nil)
        NotificationCenter.default.removeObserver(self, name: .UIKeyboardWillHide, object: nil)
    }
    /// [marker2]

    /// [marker3]
    @objc func keyboardWillShow(notification: Notification) {
        guard let rect = notification.userInfo?[UIKeyboardFrameEndUserInfoKey] as? CGRect else {
            return
        }
        
        bottomConstraint.constant = rect.height + 20.0
    }
    
    @objc func keyboardWillHide(notification: Notification) {
        bottomConstraint.constant = 20.0
    }
    /// [marker3]

    /// [marker4]
    @IBAction func onTap(_ sender: Any) {
        print("保存しました")
        textView.resignFirstResponder()
    }
    /// [marker4]
}

