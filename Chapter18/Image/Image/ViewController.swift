//
//  ViewController.swift
//  Image
//
//  Created by Tobioka on 2017/10/25.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /// [marker1]
    @IBOutlet weak var saveImageView: UIImageView!
    @IBOutlet weak var loadImageView: UIImageView!
    /// [marker1]

    /// [marker2]
    var fileURL: URL {
        // キャッシュディレクトリーのURLを取得
        let cachesURL = FileManager.default.urls(
            for: .cachesDirectory,
            in: .userDomainMask
        )[0]
        // URLの末尾にfile.pngを追加して返す
        return cachesURL.appendingPathComponent("file.png")
    }
    /// [marker2]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /// [marker3]
    @IBAction func onTapCreate(_ sender: Any) {
        let size = saveImageView.bounds.size
        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
        defer {
            UIGraphicsEndImageContext()
        }
        
        guard let context = UIGraphicsGetCurrentContext() else { return }
        
        UIColor.black.withAlphaComponent(0.2).setFill()

        // 15個のランダムな円を生成する
        for _ in 0..<15 {
            let diameter = CGFloat(arc4random_uniform(80) + 20)
            let radius = diameter / 2.0
            let x = CGFloat(arc4random_uniform(UInt32(size.width))) - radius
            let y = CGFloat(arc4random_uniform(UInt32(size.height))) - radius
            context.addEllipse(in: CGRect(x: x, y: y, width: diameter, height: diameter))
            context.fillPath()
        }
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        saveImageView.image = image
    }
    /// [marker3]

    /// [marker4]
    @IBAction func onTapSave(_ sender: Any) {
        guard let image = saveImageView.image,
            let data = UIImagePNGRepresentation(image) else {
                return
        }
        try? data.write(to: fileURL)
    }
    /// [marker4]

    /// [marker5]
    @IBAction func onTapLoad(_ sender: Any) {
        loadImageView.image = UIImage(contentsOfFile: fileURL.path)
    }
    /// [marker5]
}

