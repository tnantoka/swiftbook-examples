//
//  ViewController.swift
//  Text
//
//  Created by Tobioka on 2017/10/25.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    /// [marker1]
    @IBOutlet weak var saveTextView: UITextView!
    @IBOutlet weak var loadTextView: UITextView!
    /// [marker1]
    
    /// [marker2]
    var fileURL: URL {
        // ドキュメントディレクトリーのURLを取得
        let docsURL = FileManager.default.urls(
            for: .documentDirectory,
            in: .userDomainMask
        )[0]
        // URLの末尾にfile.txtを追加して返す
        return docsURL.appendingPathComponent("file.txt")
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
    @IBAction func onTapSave(_ sender: Any) {
        try? saveTextView.text.write(to: fileURL, atomically: true, encoding: .utf8)
    }
    /// [marker3]

    /// [marker4]
    @IBAction func onTapLoad(_ sender: Any) {
        loadTextView.text = try? String(contentsOf: fileURL)
    }
    /// [marker4]
}

