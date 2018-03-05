//: Playground - noun: a place where people can play

import UIKit

do {
/* String */
func size(of phone: String) -> Double {
    switch phone {
    case "iPhone 8":
        return 4.7
    case "iPhone 8 Plus":
        return 5.5
    case "iPhone SE":
        return 4.0
    default:
        return 0.0
    }
}

print(size(of: "iPhone 8"))
/* String */
}

/* StringTypo */
func size(of phone: String) -> Double {
    switch phone {
    case "iPhone 8":
        return 4.7
    case "iPhone 8 Plus":
        return 5.5
    case "iPhone SE":
        return 4.0
    default:
        return 0.0
    }
}

print(size(of: "iphone 8"))
/* StringTypo */

do {
/* Rewrite */
enum Phone {
    case iPhone8, iPhone8Plus, iPhoneSE
}

func size(of phone: Phone) -> Double {
    switch phone {
    case .iPhone8:
        return 4.7
    case .iPhone8Plus:
        return 5.5
    case .iPhoneSE:
        return 4.0
    }
}

print(size(of: Phone.iPhone8))
print(size(of: .iPhone8))
/* Rewrite */
}

/*
do {
/* Typo */
enum Phone {
    case iPhone8, iPhone8Plus, iPhoneSE
}

func size(of phone: Phone) -> Double {
    switch phone {
    case .iPhone8:
        return 4.7
    case .iPhone8Plus:
        return 5.5
    case .iPhoneSE:
        return 4.0
    }
}

print(size(of: .iphone8)) // error: enum type 'Phone' has no case 'iphone8'; did you mean 'iPhone8'
/* Typo */
}
*/

do {
/* Raw */
enum Phone: String {
    case iPhone8 = "iPhone 8"
    case iPhone8Plus = "iPhone 8 Plus"
    case iPhoneSE = "iPhone SE"
}

func size(of phone: Phone) -> Double {
    switch phone {
    case .iPhone8:
        return 4.7
    case .iPhone8Plus:
        return 5.5
    case .iPhoneSE:
        return 4.0
    }
}

print(size(of: .iPhone8))
/* Raw */
}

do {
/* RawInit */
enum Phone: String {
    case iPhone8 = "iPhone 8"
    case iPhone8Plus = "iPhone 8 Plus"
    case iPhoneSE = "iPhone SE"
}

func size(of phone: Phone) -> Double {
    switch phone {
    case .iPhone8:
        return 4.7
    case .iPhone8Plus:
        return 5.5
    case .iPhoneSE:
        return 4.0
    }
}

let input1 = "iPhone 8" // ユーザーが入力した値
let phone = Phone(rawValue: input1)!

print(size(of: phone))
/* RawInit */
}

do {
/* RawGet */
enum Phone: String {
    case iPhone8 = "iPhone 8"
    case iPhone8Plus = "iPhone 8 Plus"
    case iPhoneSE = "iPhone SE"
}

print(Phone.iPhone8.rawValue)
print(Phone.iPhone8Plus.rawValue)
print(Phone.iPhoneSE.rawValue)
/* RawGet */
}

do {
/* Member */
enum Phone {
    case iPhone8, iPhone8Plus, iPhoneSE

    var size: Double {
        switch self {
        case .iPhone8:
            return 4.7
        case .iPhone8Plus:
            return 5.5
        case .iPhoneSE:
            return 4.0
        }
    }
}

print(Phone.iPhone8.size)
print(Phone.iPhone8Plus.size)
/* Member */
}

do {
/* InitMethod */
enum Mode {
    case normal, hard

    init() {
        self = .normal
    }

    func showInfo() {
        print("[モード]", self == .normal ? "普通" : "難しい")
    }
}

Mode().showInfo()
/* InitMethod */
}

do {
/* Associated */
enum Info {
    case major(message: String, security: Bool)
    case minor(String)
}

func notify(_ info: Info) {
    print("お知らせ\n-------")
    switch info {
    case let .major(message, security):
        print("[重要]")
        print(message)
        if (security) {
            print("セキュリティ関連の修正を含みます。すぐにアップデートしてください。")
        }
    case .minor(let message):
        print(message)
    }
    print()
}

let info1 = Info.major(message: "ソフトウェアアップデートがあります", security: true)
let info2 = Info.major(message: "ソフトウェアアップデートがあります", security: false)
let info3 = Info.minor("メンテナンスのお知らせ")

notify(info1)
notify(info2)
notify(info3)
/* Associated */
}

do {
/* AssociatedIf */
enum Item {
    case file(name: String, ext: String)
    case folder(name: String)
}

let item = Item.file(name: "test", ext: "txt")
if case let .file(name, ext) = item {
    print("\(name).\(ext)")
}
/* AssociatedIf */
}
