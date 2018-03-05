//
//  ViewController.swift
//  Create
//
//  Created by Tobioka on 2017/10/25.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /// [marker1]
    @IBOutlet weak var imageView: UIImageView!
    /// [marker1]

    /// [marker2]
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = createImage()
    }
    /// [marker2]

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /// [marker3]
    func createImage() -> UIImage? {
        // 作成する画像のサイズ
        let size = CGSize(width: 100.0, height: 100.0)

        // 画像作成の開始と終了
        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
        defer {
            UIGraphicsEndImageContext()
        }
        guard let context = UIGraphicsGetCurrentContext() else { return nil }

        // 色指定
        UIColor.lightGray.setFill()
        UIColor.black.setStroke()

        // 図形のパス作成
        let path = UIBezierPath(
            rect: CGRect(x: 0.0, y: 0.0, width: 100.0, height: 100.0)
        )

        context.setLineWidth(3.0)            // 線の太さを設定
        context.addPath(path.cgPath)         // コンテキストにパスを追加
        context.drawPath(using: .fillStroke) // 塗りつぶしと線の描画

        // 作成したイメージを返す
        let image = UIGraphicsGetImageFromCurrentImageContext()
        return image
    }
    /// [marker3]

}

