//
//  ViewController.swift
//  LongPress
//
//  Created by Tobioka on 2017/10/25.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /// [marker1]
    @IBOutlet weak var label: UILabel!
    /// [marker1]

    /// [marker2]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let recognizer = UILongPressGestureRecognizer(target: self, action: #selector(onLongTap))
        label.addGestureRecognizer(recognizer)
    }
    /// [marker2]

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /// [marker3]
    @objc func onLongTap(recognizer: UITapGestureRecognizer) {
        guard recognizer.state == .began else { return }
        let alertController = UIAlertController(
            title: nil,
            message: "長押しされました",
            preferredStyle: .alert
        )
        alertController.addAction(
            UIAlertAction(
                title: "OK",
                style: .default,
                handler: nil
            )
        )
        present(alertController, animated: true, completion: nil)
    }
    /// [marker3]
}

