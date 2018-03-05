//
//  ViewController.swift
//  ScrollView
//
//  Created by Tobioka on 2017/10/19.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /// [marker1]
    @IBOutlet weak var scrollView: UIScrollView!
    /// [marker1]

    /// [marker2]
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.contentSize = CGSize(width: 1000.0, height: 1000.0)
    }
    /// [marker2]

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

