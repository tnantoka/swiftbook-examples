//
//  ViewController.swift
//  Safari
//
//  Created by Tobioka on 2017/10/23.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

/// [marker1]
import SafariServices
/// [marker1]

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /// [marker2]
    @IBAction func onTap(_ sender: Any) {
        guard let url = URL(string: "https://www.apple.com/jp/") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    /// [marker2]
}

