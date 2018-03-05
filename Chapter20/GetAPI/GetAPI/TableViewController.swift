//
//  TableViewController.swift
//  GetAPI
//
//  Created by Tobioka on 2017/10/08.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    /// [marker1]
    var projects = [String]() // プロジェクト一覧
    /// [marker1]

    /// [marker2]
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let url = URL(string: "https://api.github.com/orgs/apple/repos") else { return }
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data,
                let json = try? JSONSerialization.jsonObject(with: data), // データからJSONを取得
                let repos = json as? [[String: Any]] else {               // JSONを辞書に変換
                    return
            }
            DispatchQueue.main.async {
                self.projects = repos.flatMap { $0["name"] as? String }   // 辞書からプロジェクト名の一覧を取得
                self.tableView.reloadData()                               // Table Viewを再読み込み
            }
        }
        task.resume()
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
    /// [marker3]

    /// [marker4]
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return projects.count
    }
    /// [marker4]

    /// [marker5]
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        cell.textLabel?.text = projects[indexPath.row] // プロジェクト名を表示
        
        return cell
    }
    /// [marker5]

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
