//: Playground - noun: a place where people can play

import UIKit

do {
/* Init */
let info = [
    "width": 200,
    "height": 100,
    "fontSize": 16
]
print(info)

let info2: [String: Float] = [
    "width": 200.0,
    "height": 100.0,
    "fontSize": 16.0
]
print(info2)
/* Init */
}

do {
/* InitDictionary */
let info = Dictionary(dictionaryLiteral:
    ("width", 200),
    ("height", 100),
    ("fontSize", 16)
)
print(info)

let info2 = Dictionary<String, Float>(dictionaryLiteral:
    ("width", 200.0),
    ("height", 100.0),
    ("fontSize", 16.0)
)
print(info2)
/* InitDictionary */
}

do {
/* UniqueKeys */
let tupples = [
    ("width", 200),
    ("height", 100),
    ("fontSize", 16)
]

let info = Dictionary(uniqueKeysWithValues: tupples)
print(info)
/* UniqueKeys */
}

do {
/* Grouping */
let scores = [10, 80, 70, 30, 50, 20, 90, 60]
let average = 60

let groups = Dictionary(grouping: scores) { score in
    score > average ? "平均点より上" : "平均点以下"
}
print(groups)
/* Grouping */
}

do {
/* Zip */
let keys = ["width", "height", "fontSize"]
let values = [200, 100, 16]

let info = Dictionary(uniqueKeysWithValues: zip(keys, values))
print(info)
/* Zip */
}

do {
/* Empty */
let info: [String: Int] = [:]
print(info.isEmpty)
print(info)

let info2 = [String: Int]()
print(info2.isEmpty)
print(info2)

let info3 = Dictionary<String, Int>()
print(info3.isEmpty)
print(info3)
/* Empty */
}

do {
/* Count */
let info = [
    "width": 200,
    "height": 100,
    "fontSize": 16
]

print(info.count)
/* Count */
}

do {
/* Array */
let days = ["Mon", "Tue", "Wed", "Thr", "Fri"]
print(days[0])
/* Array */
}

do {
/* Subscript */
let info = [
    "width": 200,
    "height": 100,
    "fontSize": 16
]

print(info["width"])
/* Subscript */
}

do {
/* Nil */
let info = [
    "width": 200,
    "height": 100,
    "fontSize": 16
]

print(info["color"])
/* Nil */
}

do {
/* Default */
let info = [
    "width": 200,
    "height": 100,
    "fontSize": 16
]

print(info["width", default: 300])
print(info["color", default: 10])
/* Default */
}

do {
/* KeysValues */
let info = [
    "width": 200,
    "height": 100,
    "fontSize": 16
]

for key in info.keys {
    print(key)
}
for value in info.values {
    print(value)
}
/* KeysValues */
}

do {
/* First */
let info = [
    "width": 200,
    "height": 100,
    "fontSize": 16
]

print(info.first)
/* First */
}

do {
/* ForEach */
let info = [
    "width": 200,
    "height": 100,
    "fontsize": 16
]

info.forEach { key, value in print("\(key): \(value)") }
/* ForEach */
}

do {

/* Shorthand */
let info = [
    "width": 200,
    "height": 100,
    "fontsize": 16
]

info.forEach { print("\($0): \($1)") }
/* Shorthand */
}

do {
/* For */
let info = [
    "width": 200,
    "height": 100,
    "fontSize": 16
]

for (key, value) in info {
    print("\(key): \(value)")
}
/* For */
}

do {
/* Enumerate */
let info = [
    "width": 200,
    "height": 100,
    "fontSize": 16
]

for (i, element) in info.enumerated() {
    print("\(i): \(element)")
}
/* Enumerate */
}

do {
/* Index */
let info = [
    "width": 200,
    "height": 100,
    "fontSize": 16
]
let index1 = info.index(forKey: "width")
let index2 = info.index { element in element.value == 100 }

print(info[index1!])
print(info[index2!])
/* Index */
}

do {
/* Contains */
let info = [
    "width": 200,
    "height": 100,
    "fontsize": 16
]

print(info.contains { element in element.key == "width" })
print(info.contains { element in element.value == 300 })
/* Contains */
}

do {
/* ContainsShorthand */
let info = [
    "width": 200,
    "height": 100,
    "fontsize": 16
]

print(info.contains { $0.key == "width" })
print(info.contains { $0.value == 300 })
/* ContainsShorthand */
}

do {
/* MinMax */
let info = [
    "width": 200,
    "height": 100,
    "fontSize": 16
]

print(info.min { a, b in a.value < b.value })
print(info.max { a, b in a.value < b.value })
/* MinMax */
}

do {
/* MinMaxShorthand */
let info = [
    "width": 200,
    "height": 100,
    "fontSize": 16
]

print(info.min { a, b in a.value < b.value })
print(info.max { a, b in a.value < b.value })
/* MinMaxShorthand */
}

do {
/* FirstWhere */
let info = [
    "width": 200,
    "height": 100,
    "fontSize": 16
]

print(info.first { element in element.key == "width" })
/* FirstWhere */
}

do {
/* FirstWhereShorthand */
let info = [
    "width": 200,
    "height": 100,
    "fontSize": 16
]

print(info.first { $0.key == "width" })
/* FirstWhereShorthand */
}

do {
/* Map */
let info = [
    "width": 200,
    "height": 100,
    "fontSize": 16
]
let info2 = info.map { element in (element.key, element.value * 2) }

print(info2)
/* Map */
}

do {
/* MapValues */
let info = [
    "width": 200,
    "height": 100,
    "fontSize": 16
]
let info2 = info.mapValues { value in value * 2 }

print(type(of: info2))
print(info2)
/* MapValues */
}

do {
/* MapShorthand */
let info = [
    "width": 200,
    "height": 100,
    "fontSize": 16
]
let info2 = info.map { ($0.key, $0.value * 2) }

print(info2)
/* MapShorthand */
}

do {
/* Filter */
let info = [
    "width": 200,
    "height": 100,
    "fontSize": 16
]
let info2 = info.filter { element in element.value >= 100 }

print(info2)
/* Filter */
}

do {
/* FilterShorthand */
let info = [
    "width": 200,
    "height": 100,
    "fontSize": 16
]
let info2 = info.filter { $0.value >= 100 }

print(info2)
/* FilterShorthand */
}

do {
/* Sort */
let info = [
    "width": 200,
    "height": 100,
    "fontSize": 16
]
let info2 = info.sorted { a, b in a.value < b.value }

print(info2)
/* Sort */
}

do {
/* SortShorthand */
let info = [
    "width": 200,
    "height": 100,
    "fontSize": 16
]
let info2 = info.sorted { $0.value < $1.value }

print(info2)
/* SortShorthand */
}

do {
/* Reverse */
let info = [
    "width": 200,
    "height": 100,
    "fontSize": 16
]
let info2 = info.reversed()

print("info")
info.forEach { key, value in print("\(key): \(value)") }
print("\ninfo2")
info2.forEach { key, value in print("\(key): \(value)") }
/* Reverse */
}

do {
/* Merging */
let info1 = [
    "width": 200,
    "height": 100,
    "fontSize": 16
]
let info2 = [
    "width": 200,
    "color": 10
]

let info3 = info1.merging(info2) { current, new in current }
print(info3)
/* Merging */
}

do {
/* Mutable */
var info = [
    "width": 200,
    "height": 100,
    "fontSize": 16
]
print(info)

var info2: [String: Float] = [
    "width": 200.0,
    "height": 100.0,
    "fontSize": 16.0
]
print(info2)
/* Mutable */
}

do {
/* Append */
var info = [
    "width": 200,
    "height": 100,
    "fontSize": 16
]
info["border"] = 2

print(info)
/* Append */
}

do {
/* Update */
var info = [
    "width": 200,
    "height": 100,
    "fontSize": 16
]
info["width"] = 400

print(info)
/* Update */
}

do {
/* UpdateValue */
var info = [
    "width": 200,
    "height": 100,
    "fontSize": 16
]

func addOrUpdate(_ newValue: Int, forKey key: String) {
    if let oldValue = info.updateValue(newValue, forKey: key) {
        print("\(key)を\(oldValue)から\(newValue)に変更しました")
    } else {
        print("\(key)に\(newValue)を追加しました")
    }
}

addOrUpdate(400, forKey: "width")
addOrUpdate(2, forKey: "border")
/* UpdateValue */
}

do {
/* RemoveNil */
var info = [
    "width": 200,
    "height": 100,
    "fontSize": 16
]

info["height"] = nil
info["border"] = nil

print(info)
/* RemoveNil */
}

do {
/* RemoveValue */
var info = [
    "width": 200,
    "height": 100,
    "fontSize": 16
]

print(info.removeValue(forKey: "height"))
print(info.removeValue(forKey: "border"))

print(info)
/* RemoveValue */
}

do {
/* RemoveAll */
var info1 = [
    "width": 200,
    "height": 100,
    "fontSize": 16
]
var info2 = [
    "width": 200,
    "height": 100,
    "fontSize": 16
]

info1.removeAll()
info2 = [:]

print(info1)
print(info2)
/* RemoveAll */
}

do {
/* Merge */
var info1 = [
    "width": 200,
    "height": 100,
    "fontSize": 16
]
let info2 = [
    "width": 200,
    "color": 10
]

info1.merge(info2) { current, new in current }
print(info1)
/* Merge */
}

do {
/* Copy */
var info1 = [
    "width": 200,
    "height": 100,
    "fontSize": 16
]
var info2 = info1

info1["width"] = 400

print(info1)
print(info2)
/* Copy */
}

do {
/* CopyClass */
class User {
    var name: String
    init(name: String) {
        self.name = name
    }
}
let user1 = User(name: "スティープ")
let user2 = User(name: "ジョニー")

var info1 = [
    "user1": user1,
    "user2": user2
]
var info2 = info1

info1["user1"]?.name = "ティム"

print("info1")
info1.forEach { key, user in print("\(key): \(user.name)") }
print("\ninfo2")
info2.forEach { key, user in print("\(key): \(user.name)") }
/* CopyClass */
}

do {
/* CopyStruct */
struct User {
    var name: String
}
let user1 = User(name: "スティープ")
let user2 = User(name: "ジョニー")

var info1 = [
    "user1": user1,
    "user2": user2
]
var info2 = info1

info1["user1"]?.name = "ティム"

print("info1")
info1.forEach { key, user in print("\(key): \(user.name)") }
print("\ninfo2")
info2.forEach { key, user in print("\(key): \(user.name)") }
/* CopyStruct */
}
