//
//  ViewController.swift
//  Scene
//
//  Created by Tobioka on 2017/10/20.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /// [marker1]
    @IBAction func unwind(segue: UIStoryboardSegue) {
    }
    /// [marker1]
    
    @IBAction func onTap(_ sender: Any) {
        /*
        /// [marker2]
        performSegue(withIdentifier: "showModal", sender: nil)
        /// [marker2]
        */
        
        /// [marker3]
        let controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "modalController")
        present(controller, animated: true, completion: nil)
        /// [marker3]

    }
}


