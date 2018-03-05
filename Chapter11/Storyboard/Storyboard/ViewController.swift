//
//  ViewController.swift
//  Storyboard
//
//  Created by Tobioka on 2017/10/19.
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
        
        subView.layer.cornerRadius = 16.0 // ビューの四隅を半径16.0ptの角丸にする
    }
    /// [marker2]

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

