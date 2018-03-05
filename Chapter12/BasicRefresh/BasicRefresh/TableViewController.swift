//
//  TableViewController.swift
//  BasicRefresh
//
//  Created by Tobioka on 2017/10/30.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    /// [marker1]
    var items = [
        "アイテム1",
        "アイテム2",
        "アイテム3",
    ]
    /// [marker1]

    /// [marker2]
    override func viewDidLoad() {
        super.viewDidLoad()

        let refreshControl = UIRefreshControl()
        refreshControl.addTarget(self, action: #selector(onChange), for: .valueChanged)
        tableView.addSubview(refreshControl)
    }
    /// [marker2]

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    /// [marker3]
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        cell.textLabel?.text = items[indexPath.row]

        return cell
    }
    /// [marker3]

    /// [marker4]
    @objc func onChange(_ sender: UIRefreshControl) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            sender.endRefreshing()
            self.items += [
                "アイテム4",
                "アイテム5",
            ]
            self.tableView.reloadData()
        }
    }
    /// [marker4]
}
