//
//  ViewController.swift
//  BasicPage
//
//  Created by Tobioka on 2017/10/30.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /// [marker1]
    @IBAction func onChange(_ sender: UIPageControl) {
        label.text = "\(sender.currentPage + 1) / \(sender.numberOfPages)"
    }
    /// [marker1]

}

