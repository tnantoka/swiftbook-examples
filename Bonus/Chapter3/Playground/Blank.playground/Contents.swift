//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

var str = "Hello, playground"
/// [marker1]
print(str)
/// [marker1]

/// [marker2]
// グレーのビューを作成
let view = UIView(
    frame: CGRect(x: 0.0, y: 0.0, width: 320.0, height: 240.0)
)
view.backgroundColor = .lightGray

// ラベルを作成してビューに追加
let label = UILabel()
label.text = "Hello World!"
label.sizeToFit()
label.center = view.center
label.textColor = .black
view.addSubview(label)

// ビューを表示
PlaygroundPage.current.liveView = view
/// [marker2]

let user = User(name: "名前")
print(user.name)

UIImage(named: "image180")
