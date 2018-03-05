//
//  ViewController.swift
//  Filter
//
//  Created by Tatsuya Tobioka on 2017/12/10.
//  Copyright © 2017 tnantoka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /// [marker1]
    @IBOutlet weak var imageView: UIImageView!
    /// [marker1]

    /// [marker2]
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let filter = CIFilter(name: "CIGaussianBlur") else { return } // フィルター取得
        guard let image = imageView.image else { return }                   // imageViewから画像取得
        guard let ciImage = CIImage(image: image) else { return }           // CIImageに変換

        filter.setValue(ciImage, forKey: kCIInputImageKey)                  // フィルターの入力画像に指定
        if let outputImage = filter.outputImage {
            imageView.image = UIImage(ciImage: outputImage)                 // フィルターの出力をimageViewに設定
        }
    }
    /// [marker2]

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

