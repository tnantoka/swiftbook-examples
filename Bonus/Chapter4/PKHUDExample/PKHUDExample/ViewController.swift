//
//  ViewController.swift
//  PKHUDExample
//
//  Created by Tobioka on 2017/10/15.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

/// [marker1]
import PKHUD
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
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        HUD.show(.progress)                 // 読み込み中の表示
        HUD.hide(afterDelay: 3.0) { _ in    // 3秒後に今の表示を消す
            HUD.flash(.success, delay: 1.0) // 成功を表示して1秒後に消す
        }
    }
    /// [marker2]

}

