//
//  ViewController.swift
//  CellStyle
//
//  Created by Tobioka on 2017/11/07.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    let reuseIdentifier = "reuseIdentifier"

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

/// [marker1]
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 9
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        // .subtitleスタイルのセル
        case 0:
            let cell = UITableViewCell(style: .subtitle, reuseIdentifier: reuseIdentifier)
            cell.textLabel?.text = ".subtitle"
            cell.detailTextLabel?.text = "detail"
            return cell
        // .value1スタイルのセル
        case 1:
            let cell = UITableViewCell(style: .value1, reuseIdentifier: reuseIdentifier)
            cell.textLabel?.text = ".value1"
            cell.detailTextLabel?.text = "detail"
            return cell
        // .value2スタイルのセル
        case 2:
            let cell = UITableViewCell(style: .value2, reuseIdentifier: reuseIdentifier)
            cell.textLabel?.text = ".value2"
            cell.detailTextLabel?.text = "detail"
            return cell
        default:
            // .defaultスタイルのセル
            let cell = UITableViewCell(style: .default, reuseIdentifier: reuseIdentifier)
            
            switch indexPath.row {
            // .checkmarkのアクセサリー
            case 4:
                cell.accessoryType = .checkmark
                cell.textLabel?.text = ".checkmark"
            // .detailButtonのアクセサリー
            case 5:
                cell.accessoryType = .detailButton
                cell.textLabel?.text = ".detailButton"
            // .detailDisclosureButtonのアクセサリー
            case 6:
                cell.accessoryType = .detailDisclosureButton
                cell.textLabel?.text = ".detailDisclosureButton"
            // .disclosureIndicatorのアクセサリー
            case 7:
                cell.accessoryType = .disclosureIndicator
                cell.textLabel?.text = ".disclosureIndicator"
            // imageを指定
            case 8:
                cell.imageView?.image = UIImage(named: "PaperPlane")
                cell.textLabel?.text = "image"
            default:
                cell.textLabel?.text = ".default"
            }
            
            return cell
        }
    }
}
/// [marker1]


