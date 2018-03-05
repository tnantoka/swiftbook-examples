//
//  ViewController.swift
//  ForcedTry
//
//  Created by Tatsuya Tobioka on 2017/11/29.
//  Copyright © 2017 tnantoka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        /// [marker1]
        enum FileError: Error {
            case cannotLoad
        }
        func successfulLoad() throws -> String {
            return "読み込んだ内容1"
        }
        func failedLoad() throws -> String {
            throw FileError.cannotLoad
            return "読み込んだ内容2"
        }
        
        print(try! successfulLoad())
        print(try! failedLoad()) // fatal error: 'try!' expression unexpectedly raised an error: FileError
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

