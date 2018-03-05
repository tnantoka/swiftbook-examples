//
//  ViewController.swift
//  AlamofireExample
//
//  Created by Tobioka on 2017/10/15.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

/// [marker1]
import Alamofire
/// [marker1]

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    /// [marker2]
    override func viewDidLoad() {
        super.viewDidLoad()

        Alamofire.request("http://www.socym.co.jp/").responseString { response in
            self.textView.text = response.result.value
        }
    }
    /// [marker2]

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

