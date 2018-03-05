//
//  ViewController.swift
//  Images
//
//  Created by Tobioka on 2017/10/25.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /// [marker1]
    @IBOutlet weak var imageView: UIImageView!
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
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        // 4枚の画像を配列にする
        let images = [
            UIImage(named: "Mute"),
            UIImage(named: "Low"),
            UIImage(named: "Medium"),
            UIImage(named: "High"),
        ].flatMap { $0 }              // [Image?]から[Image]に変換

        // アニメーションの設定
        imageView.animationImages = images
        imageView.animationDuration = 3.0

        // アニメーションの開始
        imageView.startAnimating()
    }
    /// [marker2]

}

