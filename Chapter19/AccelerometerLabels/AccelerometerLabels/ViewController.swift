//
//  ViewController.swift
//  AccelerometerLabels
//
//  Created by Tatsuya Tobioka on 2017/12/28.
//  Copyright © 2017 tnantoka. All rights reserved.
//

import UIKit

import CoreMotion

class ViewController: UIViewController {

    @IBOutlet weak var labelX: UILabel!
    @IBOutlet weak var labelY: UILabel!
    @IBOutlet weak var labelZ: UILabel!

    let manager = CMMotionManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        manager.accelerometerUpdateInterval = 0.1

        guard manager.isAccelerometerAvailable,
            let queue = OperationQueue.current else {
                return
        }

        manager.startAccelerometerUpdates(to: queue) { data, error in
            guard let data = data else { return }
            let x = data.acceleration.x
            let y = data.acceleration.y
            let z = data.acceleration.z

            self.labelX.text = String(x)
            self.labelY.text = String(y)
            self.labelZ.text = String(z)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

