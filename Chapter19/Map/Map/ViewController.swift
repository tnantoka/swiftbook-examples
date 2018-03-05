//
//  ViewController.swift
//  Map
//
//  Created by Tobioka on 2017/10/27.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

/// [marker1]
import MapKit
/// [marker1]

/// [marker2]
import CoreLocation
/// [marker2]

class ViewController: UIViewController {

    /// [marker3]
    @IBOutlet weak var mapView: MKMapView!
    /// [marker3]

    /// [marker4]
    let manager = CLLocationManager() // 位置情報を管理するクラス
    /// [marker4]

    /// [marker5]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Appple本社の場所
        let apple = CLLocationCoordinate2D(
            latitude: 37.332331410000002,
            longitude: -122.0312186
        )

        let annotation = MKPointAnnotation() // ピンを表現するクラス
        annotation.coordinate = apple
        annotation.title = "Apple"
        annotation.subtitle = "ここです"
        mapView.addAnnotation(annotation)    // ピンを追加
    }
    /// [marker5]

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /// [marker6]
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        manager.delegate = self                 // Delegateを設定
        manager.requestWhenInUseAuthorization() // ユーザーに許可を求める
    }
    /// [marker6]

}

/// [marker7]
extension ViewController: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        switch status {
        case .authorizedWhenInUse:          // アプリ使用中の位置情報アクセスが許可された
            manager.startUpdatingLocation() // 位置情報の更新を開始
        default:
            break
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        // 緯度・軽度を取得
        guard let latitude = locations.first?.coordinate.latitude,
            let longitude = locations.first?.coordinate.longitude else {
                return
        }

        // マップの位置に設定
        let center = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        let span = MKCoordinateSpanMake(0.01, 0.01)
        let region = MKCoordinateRegion(center: center, span: span)
        
        mapView.region = region
    }
}
/// [marker7]


