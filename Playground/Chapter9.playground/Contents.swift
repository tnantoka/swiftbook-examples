//: Playground - noun: a place where people can play

import UIKit

do {
/* NoClass */
func printIPhone(owner: String) {
    print("\(owner)のiPhone")
}

printIPhone(owner: "スティーブ")
printIPhone(owner: "ジョニー")
/* NoClass */
}

do {
/* Class */
class IPhone {
    let model: String      // モデル名
    let owner: String      // オーナー
    var cover: String = "" // 付けているカバー

    // インスタンスの作成時に状態を設定する
    init(model: String, owner: String) {
        self.model = model
        self.owner = owner
    }

    // カバーを付ける
    func set(cover: String) {
        self.cover = cover
    }

    // 自分の情報を説明する
    func info() -> String {
        return "\(owner)の\(model) | \(cover)"
    }
}

let phone1 = IPhone(model: "iPhone 8", owner: "スティーブ")    // 1つめのiPhoneのデータ
let phone2 = IPhone(model: "iPhone 8 Plus", owner: "ジョニー") // 2つめのiPhoneのデータ
phone2.set(cover: "ソフトカバー")                               // 2つめのiPhoneにカバーを付ける

print(phone1.info())                                         // 1つめのiPhoneの情報を表示
print(phone2.info())                                         // 2つめのiPhoneの情報を表示
/* Class */
}


do {
/* ClassSyntax */
class IPhone {
}

let phone = IPhone()
print(phone)
/* ClassSyntax */
}

do {
/* Stored */
class IPhone {
    var model = "iPhone 8"
}

let phone = IPhone()
print(phone.model)
/* Stored */
}

do {
/* Observer */
class IPhone {
    var histories = [String]()
    var model = "iPhone 8" {
        willSet {
            histories.append("\(model)から\(newValue)に変更されます")
        }
        didSet {
            histories.append("\(model)に変更されました")
        }
    }
}

let phone = IPhone()
phone.model = "iPhone 8 Plus"
print(phone.histories.joined(separator: "\n"))
/* Observer */
}

do {
/* Computed */
class IPhone {
    var cover = "カバー"
    var isCovered: Bool {
        return !cover.isEmpty
    }
}

let phone1 = IPhone()
print(phone1.isCovered)

let phone2 = IPhone()
phone2.cover = ""
print(phone2.isCovered)
/* Computed */
}

do {
/* Setter */
class IPhone {
    var cover = ""
    var isCovered: Bool {
        get {
            return !cover.isEmpty
        }
        set {
            if newValue {
                cover = "カバー"
            } else {
                cover = ""
            }
        }
    }
}

let phone = IPhone()
phone.isCovered = true
print(phone.cover)
/* Setter */
}

do {
/* Method */
class IPhone {
    var cover: String = ""

    func set(cover: String) {
        guard self.cover.isEmpty else {
            return
        }
        self.cover = cover
    }
}

let phone = IPhone()
phone.set(cover: "ソフトカバー")
phone.set(cover: "ハードカバー") // これは無視される
print(phone.cover)
/* Method */
}

do {
/* Init */
class IPhone {
    let model: String

    init(model: String) {
        self.model = model
    }
}

print(IPhone(model: "iPhone 8 Plus").model)
/* Init */
}

do {
/* Convenience */
class IPhone {
    let cover: String
    let covered: Bool

    init(cover: String, covered: Bool) {
        self.cover = cover
        self.covered = covered
    }

    convenience init(cover: String) {
        let covered = !cover.isEmpty
        self.init(cover: cover, covered: covered)
    }
}

print(IPhone(cover: "").covered)
/* Convenience */
}

do {
/* InitDefault */
class IPhone {
    let model: String

    init(model: String = "iPhone") {
        self.model = model
    }
}

print(IPhone().model)
/* InitDefault */
}

do {
/* Failable */
class IPhone {
    let model: String

    init?(model: String) {
        guard !model.isEmpty else { return nil }
        self.model = model
    }
}

print(IPhone(model: ""))
/* Failable */
}

do {
/* ClassProp */
class IPhone {
    static var count = 0

    init() {
        IPhone.count += 1
    }
}

_ = IPhone()
_ = IPhone()
print(IPhone.count)
/* ClassProp */
}

do {
/* ClassMethod */
class IPhone {
    static func models() -> [String] {
        return ["iPhone 8", "iPhone 8 Plus"]
    }
}

print(IPhone.models().joined(separator: "\n"))
/* ClassMethod */
}

do {
/* NoInherit */
class IPhone {
    let model: String

    var isPlus: Bool {
        return model.hasSuffix("Plus")
    }

    init(model: String) {
        self.model = model
    }
}

class IPad {
    let model: String

    var isPro: Bool {
        return model.hasSuffix("Pro")
    }

    init(model: String) {
        self.model = model
    }
}

let phone = IPhone(model: "iPhone 8")
let pad = IPad(model: "iPad Pro")
print(phone.isPlus)
print(pad.isPro)
/* NoInherit */
}

do {
/* Inherit */
class IOSDevice {
    let model: String

    init(model: String) {
        self.model = model
    }
}

class IPhone: IOSDevice {
    var isPlus: Bool {
        return model.hasSuffix("Plus")
    }
}

class IPad: IOSDevice {
    var isPro: Bool {
        return model.hasSuffix("Pro")
    }
}

let phone = IPhone(model: "iPhone 8")
let pad = IPad(model: "iPad Pro")
print(phone.isPlus)
print(pad.isPro)
/* Inherit */
}

do {
/* Override */
class IOSDevice {
    let model: String

    init(model: String) {
        self.model = model
    }

    func info() -> String {
        return model
    }
}

class IPhone: IOSDevice {
    override func info() -> String {
        return "このiPhoneのモデルは\(model)です"
    }
}

let phone = IPhone(model: "iPhone 8")
print(phone.info())
/* Override */
}

do {
/* AccessControl */
class IPhone {
    private var cover = ""

    var covered: Bool {
        return !cover.isEmpty
    }

    func set(cover: String) {
        guard self.cover.isEmpty else {
            return
        }
        self.cover = cover
    }
}

let phone = IPhone()
phone.set(cover: "ハードカバー")
print(phone.covered)
/* AccessControl */
}

/*
do {
/* AccessControlError */
class IPhone {
    private var cover = ""

    var covered: Bool {
        return !cover.isEmpty
    }

    func set(cover: String) {
        guard self.cover.isEmpty else {
            return
        }
        self.cover = cover
    }
}

let phone = IPhone()
phone.cover = "ハードカバー" // 'cover' is inaccessible due to 'private' protection level
/* AccessControlError */
}
*/

do {
/* Protocol */
class IPhone: CustomStringConvertible {
    var model = "iPhone 8"
    var description: String {
        return "このiPhoneのモデルは\(model)です"
    }
}

let phone = IPhone()
print(phone)
/* Protocol */
}

/* Extension */
class IPhone {
    var model = "iPhone 8"
}
extension IPhone {
    var description: String {
        return "このiPhoneのモデルは\(model)です"
    }
}

let phone = IPhone()
print(phone)
/* Extension */

/*
do {
/* ExtensionError */
// OK: 関数内でクラスを定義
func classInFunc() {
    class IPhone {
        var model = "iPhone 8"
    }
}

// NG: 関数内でexntensionを定義
func extensionInFunc() {
    class IPhone {
        var model = "iPhone 8"
    }

    // Declaration is only valid at file scope
    extension IPhone {
        var description: String {
            return "このiPhoneのモデルは\(model)です"
        }
    }
}
/* ExtensionError */
}
*/

do {
/* Compare */
class IPhone {
    var model = "iPhone 8"
}

let phone1 = IPhone()
let phone2 = IPhone()
let phone3 = phone1
print(phone1 === phone2)
print(phone1 === phone3)
/* Compare */
}

do {
/* Struct */
struct IPhone {
    let model: String
}

let phone = IPhone(model: "iPhone 8")
print(phone.model)
/* Struct */
}

do {
/* Codable */
// Codableプロトコルに従うことを指定
struct IPhone: Codable {
    let model: String
    let cover: String
}

// IPhoneクラスのインスタンスに変換したいJSON文字列
let json = """
{
  "model": "iPhone 8",
  "cover": "ソフトカバー"
}
"""

// JSON文字列をDataに変換
if let data = json.data(using: .utf8) {
    // Dataに変換したJSONからIPhoneクラスのインスタンスを作成
    if let phone = try? JSONDecoder().decode(IPhone.self, from: data) {
        print("JSONから変換したIPhoneインスタンス")
        print(phone)
    }
}

print()

// JSON文字列を変換したいIPhoneインスタンス
let phone = IPhone(model: "iPhone 8 Plus", cover: "ハードカバー")

// インスタンスをJSON Dataに変換
if let data = try? JSONEncoder().encode(phone) {
    // Dataから文字列に変換
    if let string = String(data: data, encoding: .utf8) {
        print("IPhoneインスタンスから変換したJSON")
        print(string)
    }
}
/* Codable */
}

do {
/* ValueType */
class UserClass {
    var name: String = ""
}

struct UserStruct {
    var name: String = ""
}

var user1 = UserClass()
user1.name = "name1"
var user2 = user1
user2.name = "name2"

var user3 = UserStruct()
user3.name = "name3"
var user4 = user3
user4.name = "name4"

var user5 = ""
user5 = "name5"
var user6 = user5
user6 = "name6"

print(user1.name)
print(user2.name)
print(user3.name)
print(user4.name)
print(user5)
print(user6)
/* ValueType */
}


