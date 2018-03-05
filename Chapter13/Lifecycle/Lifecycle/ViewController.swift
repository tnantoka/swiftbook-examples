//
//  ViewController.swift
//  Lifecycle
//
//  Created by Tobioka on 2017/10/21.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    /// [marker1]
    @IBOutlet weak var textView: UITextView!
    /// [marker1]
    
    /// [marker2]
    @IBAction func onTap(_ sender: Any) {
        let viewController = UITableViewController()
        present(viewController, animated: true, completion: nil)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            self.dismiss(animated: true, completion: nil)
        }
    }
    /// [marker2]
    
    /// [marker3]
    // 受け取ったメソッド名をtextViewに追加する
    func onEvent(_ function: String) {
        textView.text = textView.text + function + "\n"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        onEvent(#function)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        onEvent(#function)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        onEvent(#function)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        onEvent(#function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        onEvent(#function)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        onEvent(#function)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        onEvent(#function)
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        onEvent(#function)
    }
    /// [marker3]
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

