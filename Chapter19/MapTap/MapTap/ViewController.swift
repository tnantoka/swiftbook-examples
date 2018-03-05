//
//  ViewController.swift
//  MapTap
//
//  Created by Tatsuya Tobioka on 2017/12/28.
//  Copyright © 2017 tnantoka. All rights reserved.
//

import UIKit

import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        /// [marker1]
        let tapRecongnizer = UILongPressGestureRecognizer(target: self, action: #selector(onLongPress))
        mapView.addGestureRecognizer(tapRecongnizer)
        /// [marker1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /// [marker2]
    @objc func onLongPress(sender: UILongPressGestureRecognizer) {
        guard sender.state == .began else { return }
        let annotation = MKPointAnnotation()
        annotation.coordinate = mapView.centerCoordinate
        annotation.title = "\(Date())に追加"
        mapView.addAnnotation(annotation)
    }
    /// [marker2]
}

