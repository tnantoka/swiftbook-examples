//
//  ViewController.swift
//  ProgrammaticallyItem
//
//  Created by Tobioka on 2017/10/30.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    /// [marker1]
    override func viewDidLoad() {
        super.viewDidLoad()

        let item = UIBarButtonItem(title: "アラート", style: .plain, target: self, action: #selector(onTap))
        toolbarItems = [item]
    }
    /// [marker1]

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /// [marker2]
    @objc func onTap(_ sender: Any) {
        let alertController = UIAlertController(
            title: "アラート",
            message: "タップされました",
            preferredStyle: .alert
        )
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
    /// [marker2]

}

