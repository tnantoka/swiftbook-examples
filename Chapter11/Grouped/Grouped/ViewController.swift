//
//  ViewController.swift
//  Grouped
//
//  Created by Tobioka on 2017/11/07.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    /// [marker1]
    // 2次元配列でデータを用意
    let items = [
        ["アイテム1-1", "アイテム1-2", "アイテム1-3"],
        ["アイテム2-1", "アイテム2-2", "アイテム3-3"],
        ["アイテム3-1", "アイテム2-2", "アイテム3-3"],
    ]
    /// [marker1]

    let reuseIdentifier = "reuseIdentifier"

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UITableViewCell.self, forCellReuseIdentifier: reuseIdentifier)
        
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

/// [marker2]
extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return items.count // itemsのカウントの数だけセクションを表示する
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items[section].count // 該当のセクションにあるデータの数だけセルを表示する
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath)
        
        // セクション・行を元にデータを取得してラベルに設定
        cell.textLabel?.text = items[indexPath.section][indexPath.row]

        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "セクション\(section + 1)" // セクションのヘッダーを指定
    }
}
/// [marker2]
