//
//  ViewController.swift
//  Tap
//
//  Created by Tobioka on 2017/10/25.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /// [marker1]
    @IBOutlet weak var subView: UIView!
    /// [marker1]

    /// [marker2]
    override func viewDidLoad() {
        super.viewDidLoad()

        let recognizer = UITapGestureRecognizer(target: self, action: #selector(onTap))
        subView.addGestureRecognizer(recognizer)
    }
    /// [marker2]

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /// [marker3]
    @objc func onTap(recognizer: UITapGestureRecognizer) {
        let alertController = UIAlertController(
            title: nil,
            message: "タップされました",
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

