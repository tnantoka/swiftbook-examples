//
//  TableViewController.swift
//  Resize
//
//  Created by Tobioka on 2017/10/25.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    /// [marker1]
    let items = [
        "Happy",
        "Sad",
        "Happy",
        "Sad",
        "Happy",
    ]
    /// [marker1]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    /// [marker2]
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    /// [marker2]

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        /// [marker3]
        let item = items[indexPath.row]
        cell.textLabel?.text = item

        let image = UIImage(named: item)
        cell.imageView?.image = image
        /// [marker3]

        /// [marker4]
        cell.imageView?.image = resize(image: image)
        /// [marker4]

        return cell
    }

    /// [marker5]
    func resize(image: UIImage?) -> UIImage? {
        guard let image = image else { return nil }
        let contextSize = CGSize(width: 80.0, height: 80.0)
        
        UIGraphicsBeginImageContextWithOptions(contextSize, false, 0.0)
        defer {
            UIGraphicsEndImageContext()
        }

        // アスペクト比を保ったリサイズ後の大きさを計算
        let widthRatio = contextSize.width / image.size.width
        let heightRatio = contextSize.height / image.size.height
        let ratio = min(widthRatio, heightRatio) // 幅・高さのうち小さい方の倍率に合わせる
        
        let resizedSize = CGSize(
            width: image.size.width * ratio,
            height: image.size.height * ratio
        )
        let resizedOrigin = CGPoint(
            x: (contextSize.width - resizedSize.width) / 2.0,
            y: (contextSize.height - resizedSize.height) / 2.0
        )

        // リサイズにした大きさで描画
        image.draw(in: CGRect(origin: resizedOrigin, size: resizedSize))

        // 画像を作成して返す
        let resizedImage = UIGraphicsGetImageFromCurrentImageContext()
        return resizedImage
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
