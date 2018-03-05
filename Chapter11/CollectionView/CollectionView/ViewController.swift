//
//  ViewController.swift
//  CollectionView
//
//  Created by Tobioka on 2017/10/20.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /// [marker1]
    @IBOutlet weak var collectionView: UICollectionView!
    /// [marker1]

    /// [marker2]
    let items: [CGFloat] = [
        1.0,
        2.0,
        3.0,
        4.0,
        5.0,
        6.0,
        7.0,
        8.0,
        9.0,
    ]
    let reuseIdentifier = "reuseIdentifier"
    /// [marker2]

    /// [marker3]
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.allowsSelection = true // 選択可能にする
    }
    /// [marker3]

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

/// [marker4]
extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count // itemsの個数だけセルを表示する
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // セルを作成か再利用する
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)

        cell.contentView.layer.borderColor = UIColor.black.cgColor // 枠線の色を黒に
        cell.contentView.layer.borderWidth = items[indexPath.row]  // itemsからデータを取得して枠線の太さに設定

        // 選択中のセルの背景をグレーに
        let bgView = UIView()
        bgView.backgroundColor = .lightGray
        cell.selectedBackgroundView = bgView

        return cell
    }
}
/// [marker4]

/// [marker5]
extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let alertController = UIAlertController(
            title: nil,
            message: "ボーダーの太さは\(items[indexPath.row])です",
            preferredStyle: .alert
        )
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
}
/// [marker5]


