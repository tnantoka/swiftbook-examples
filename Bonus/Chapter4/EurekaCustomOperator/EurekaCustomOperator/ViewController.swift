//
//  ViewController.swift
//  EurekaCustomOperator
//
//  Created by Tatsuya Tobioka on 2017/12/29.
//  Copyright © 2017 tnantoka. All rights reserved.
//

import UIKit

import Eureka

class ViewController: FormViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        /// [marker1]
        let titleRow = TextRow { row in
            row.title = "タイトル"
            row.placeholder = "タイトルを入力"
        }

        let bodyRow = TextAreaRow { row in
            row.placeholder = "本文を入力"
        }

        let section = Section()
        section
            <<< titleRow
            <<< bodyRow

        form +++ section
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

