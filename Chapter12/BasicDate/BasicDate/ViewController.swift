//
//  ViewController.swift
//  BasicDate
//
//  Created by Tobioka on 2017/10/30.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /// [marker1]
    @IBOutlet weak var label: UILabel!
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
    @IBAction func onChange(_ sender: UIDatePicker) {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .long
        label.text = formatter.string(from: sender.date)
    }
    /// [marker2]

}

