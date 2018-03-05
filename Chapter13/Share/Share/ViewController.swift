//
//  ViewController.swift
//  Share
//
//  Created by Tobioka on 2017/10/22.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /// [marker1]
    @IBAction func onTap(_ sender: Any) {
        let activityController = UIActivityViewController(
            activityItems: ["シェアするメッセージ"],
            applicationActivities: nil
        )
        present(activityController, animated: true, completion: nil)
    }
    /// [marker1]
}

