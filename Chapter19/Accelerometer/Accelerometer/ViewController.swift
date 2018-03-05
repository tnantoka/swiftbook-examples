//
//  ViewController.swift
//  Accelerometer
//
//  Created by Tobioka on 2017/10/27.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

/// [marker1]
import CoreMotion
/// [marker1]

class ViewController: UIViewController {

    /// [marker2]
    @IBOutlet weak var subView: UIView!
    /// [marker2]

    /// [marker3]
    let manager = CMMotionManager() // センサーを管理するクラス
    /// [marker3]

    /// [marker4]
    override func viewDidLoad() {
        super.viewDidLoad()

        manager.accelerometerUpdateInterval = 0.1 // センサーの値を更新する間隔

        // 加速度センサーが有効か判定、処理に使うためのキューを取得
        guard manager.isAccelerometerAvailable,
            let queue = OperationQueue.current else {
                return
        }

        // センサーの値更新を開始
        manager.startAccelerometerUpdates(to: queue) { data, error in
            guard let data = data else { return }
            let x = data.acceleration.x
            let y = data.acceleration.y

            // 傾いている方にビューを移動させる
            if (x > 0) {
                self.subView.frame.origin.x += 5
            } else {
                self.subView.frame.origin.x -= 5
            }
            if (y > 0) {
                self.subView.frame.origin.y -= 5
            } else {
                self.subView.frame.origin.y += 5
            }
        }
    }
    /// [marker4]

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

