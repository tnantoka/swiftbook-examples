//
//  ViewController.swift
//  ProgrammaticallyPage
//
//  Created by Tobioka on 2017/10/30.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /// [marker1]
    var label: UILabel!
    /// [marker1]

    /// [marker2]
    override func viewDidLoad() {
        super.viewDidLoad()

        let container = UIView(
            frame: CGRect(x: 16.0, y: 20.0, width: view.bounds.width - 32, height: 37.0)
        )
        container.backgroundColor = .darkGray
        view.addSubview(container)
        
        let pageControl = UIPageControl()
        pageControl.numberOfPages = 3
        pageControl.sizeToFit()
        pageControl.frame.origin.x = container.bounds.midX - pageControl.bounds.midX
        pageControl.addTarget(self, action: #selector(onChange), for: .valueChanged)
        container.addSubview(pageControl)
        
        label = UILabel(
            frame: CGRect(x: 0.0, y: container.frame.maxY + 8.0, width: view.bounds.width, height: 30.0)
        )
        label.textAlignment = .center
        view.addSubview(label)
    }
    /// [marker2]

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /// [marker3]
    @objc func onChange(_ sender: UIPageControl) {
        label.text = "\(sender.currentPage + 1) / \(sender.numberOfPages)"
    }
    /// [marker3]

}

