//
//  ViewController.swift
//  TupleMutable
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
        var student = (id: 50821, familyName: "田中", firstName: "太郎")
        var score: (subject: String, point: Float) = ("国語", 75.0)
        
        student = (id: 46527, familyName: "田中", firstName: "太郎")
        
        student.familyName = "鈴木"
        student.2 = "次郎"
        
        score.subject = "数学"
        score.1 = 50.0
        
        print(student.0, student.1, student.2)
        print(student.id, student.familyName, student.firstName)
        print(score.0, score.1)
        print(score.subject, score.point)
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

