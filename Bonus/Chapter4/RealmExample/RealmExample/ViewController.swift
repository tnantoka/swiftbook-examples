//
//  ViewController.swift
//  RealmExample
//
//  Created by Tobioka on 2017/10/15.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

/// [marker1]
import RealmSwift
/// [marker1]

/// [marker2]
class ViewController: UITableViewController {
/// [marker2]

    /// [marker3]
    var people: Results<Person>! // データベースから取得したPerson一覧を保持するプロパティ
    /// [marker3]

    /// [marker4]
    override func viewDidLoad() {
        super.viewDidLoad()

        let realm = try! Realm()            // Realmのインスタンスを作成
        people = realm.objects(Person.self) // Person一覧を取得

        if people.isEmpty {                 // Person一覧が空なら
            let person1 = Person()
            person1.name = "スティーブ"
            let person2 = Person()
            person2.name = "ジョニー"
            
            try! realm.write {              // 2人のPersonを追加
                realm.add(person1)
                realm.add(person2)
            }
        }
        
        tableView.reloadData()              // TableViewを再読込
    }
    /// [marker4]

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /// [marker5]
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count // 一覧の数だけセルを表示
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // 名前をセルに表示
        let person = people[indexPath.row]
        cell.textLabel?.text = person.name
        
        return cell
    }
    /// [marker5]
}

