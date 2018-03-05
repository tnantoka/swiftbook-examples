//
//  ViewController.swift
//  TableView
//
//  Created by Tobioka on 2017/10/20.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /// [marker1]
    @IBOutlet weak var tableView: UITableView!
    /// [marker1]

    /// [marker2]
    let items = [
        "アイテム1",
        "アイテム2",
        "アイテム3",
        "アイテム4",
        "アイテム5",
    ]
    
    let reuseIdentifier = "reuseIdentifier"
    /// [marker2]

    /// [marker3]
    override func viewDidLoad() {
        super.viewDidLoad()

        // UITableViewCellという標準で用意されているセルを使うことを登録
        tableView.register(
            UITableViewCell.self,
            forCellReuseIdentifier: reuseIdentifier
        )
        
        tableView.dataSource = self // 自分自身をDataSourceとして指定
        tableView.delegate = self   // 自分自身をDelegateとして指定
    }
    /// [marker3]

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

/// [marker4]
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count // itemsのカウントの数だけセルを表示
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        // セルを作成（再利用できる場合は再利用される）
        let cell = tableView.dequeueReusableCell(
            withIdentifier: reuseIdentifier,
            for: indexPath
        )
        
        cell.textLabel?.text = items[indexPath.row] // itemsから内容を取り出しセルのラベルに表示する
        
        return cell
    }
}
/// [marker4]

/// [marker5]
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let alertController = UIAlertController(
            title: nil,
            message: items[indexPath.row],
            preferredStyle: .alert
        )
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
}
/// [marker5]
