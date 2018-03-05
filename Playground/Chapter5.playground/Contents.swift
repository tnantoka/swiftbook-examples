//: Playground - noun: a place where people can play

import UIKit

do {
/* Init */
let integers = [1, 2, 3]
print(integers)

let floats: [Float] = [1.0, 2.0, 3.0]
print(floats)
/* Init */
}

do {
/* InitArray */
let integers = Array(arrayLiteral: 1, 2, 3)
print(integers)

let floats = Array<Float>(arrayLiteral: 1.0, 2.0, 3.0)
print(floats)
/* InitArray */
}

do {
/* InitArrayType */
let floats: Array<Float> = [1.0, 2.0, 3.0]
print(floats)
/* InitArrayType */
}

do {
/* Empty */
let empty: [Int] = []
print(empty)
print(empty.isEmpty)

let empty2 = [Int]()
print(empty2)
print(empty2.isEmpty)

let empty3 = Array<Int>()
print(empty3)
print(empty3.isEmpty)
/* Empty */
}

do {
/* Repeat */
let scores = [Int](repeating: 100, count: 3)
print(scores)

let categories = Array(repeating: "未分類", count: 2)
print(categories)

let floats = Array<Float>(repeating: 1.0, count: 4)
print(floats)
/* Repeat */
}

do {
/* Range */
let integers1 = [Int](0...5)
print(integers1)

let integers2 = Array(0..<5)
print(integers2)

let integers3 = Array<Int>(-2...2)
print(integers3)
/* Range */
}

do {
/* Count */
let integers = [1, 2, 3]
print(integers.count)
/* Count */
}

do {
/* Subscript */
let integers = [1, 2, 3]
print(integers[0])
/* Subscript */
}

/*
do {
/* Out */
let integers = [1, 2, 3]
print(integers[3]) // fatal error: Index out of range
/* Out */
}
*/

do {
/* ForEachN */
let numbers = [1, 2, 3]

numbers.forEach { n in print(n) }
/* ForEachN */
}

do {
/* ForEach0 */
let numbers = [1, 2, 3]

numbers.forEach { print($0) }
/* ForEach0 */
}

do {
/* For */
let numbers = [1, 2, 3]

for n in numbers {
    print(n)
}
/* For */
}

do {
/* Enumerate */
let numbers = [1, 2, 3]

for (i, n) in numbers.enumerated() {
    print("\(i): \(n)")
}
/* Enumerate */
}

do {
/* Sub */
let numbers = [1, 2, 3]
print(numbers[0..<2])
print(numbers[0...1])
/* Sub */
}

do {
/* SubOnSided */
let numbers = [1, 2, 3]
print(numbers[1...])
print(numbers[...1])
print(numbers[..<1])
/* SubOnSided */
}

do {
/* Contains */
let numbers = [1, 2, 3]

print(numbers.contains(1))
print(numbers.contains(4))
/* Contains */
}

do {
/* IndexOf */
let numbers = [1, 2, 3]

print(numbers.index(of: 1))
print(numbers.index(of: 4))
/* IndexOf */
}

do {
/* MinMax */
let numbers = [1, 2, 3]
print(numbers.min())
print(numbers.max())
/* MinMax */
}

do {
/* MinMaxString */
let english = ["a", "b", "c", "A", "B", "C"]
print(english.min())
print(english.max())

let japanese = ["ア", "イ", "ウ", "あ", "い", "う"]
print(japanese.min())
print(japanese.max())
/* MinMaxString */
}

do {
/* First */
let numbers = [1, 2, 3]

print(numbers.first { n in n > 1 })
print(numbers.first { $0 > 1 })
/* First */
}

do{
/* Compare */
let numbers1 = [1, 3, 5]
let numbers2 = numbers1
let numbers3 = [1, 3, 5]
let numbers4 = [1, 3, 4]

print(numbers1 == numbers2)
print(numbers1 == numbers3)
print(numbers1 == numbers4)
/* Compare */
}

do {
/* Add */
let array1 = ["おはよう", "こんにちは"]
let array2 = ["こんばんは", "おやすみ"]
let array3 = array1 + array2

print(array1)
print(array2)
print(array3)
/* Add */
}

do {
/* Map */
let numbers = [1, 2, 3]

print(numbers.map { n in n * 2 })
print(numbers.map { $0 * 2 })
/* Map */
}

do {
/* Filter */
let numbers = [1, 2, 3]

print(numbers.filter { n in n % 2 == 1 })
print(numbers.filter { $0 % 2 == 1 })
/* Filter */
}

do {
/* Drop */
let numbers = [1, 2, 3]

print(numbers.dropFirst())
print(numbers.dropLast())
/* Drop */
}

do {
/* Sorted */
let numbers = [1, 3, 2]
let strings = ["い", "う", "あ"]

print(numbers.sorted())
print(strings.sorted())
/* Sorted */
}

do {
/* Reversed */
let numbers = [1, 2, 3]
let strings = ["あ", "い", "う"]

for n in numbers.reversed() {
    print(n)
}
for s in strings.reversed() {
    print(s)
}
/* Reversed */
}

do {
/* Join */
let strings = ["a", "b", "c"]

print(strings.joined())
print(strings.joined(separator: ","))
/* Join */
}

do {
/* Matrix */
let numbers = [
    [1, 2, 3],
    [10, 20, 30]
]

print(numbers[0][0])
print(numbers[1][1])
/* Matrix */
}

do {
/* Mutable */
var integers = [1, 2, 3]
var floats: [Float] = [1.0, 2.0, 3.0]

print(integers)
print(floats)
/* Mutable */
}

do {
/* Append */
var numbers = [1, 2, 3]
numbers.append(4)

print(numbers)
/* Append */
}

do {
/* Insert */
var numbers = [1, 2, 3]
numbers.insert(0, at: 0)

print(numbers)
/* Insert */
}

do {
/* Update */
var numbers = [1, 2, 3]
numbers[0] = 0
numbers[2] = 4

print(numbers)
/* Update */
}

do {
/* Remove */
var numbers = [1, 2, 3]
numbers.remove(at: 2)

print(numbers)
/* Remove */
}

do {
/* RemoveFirstLast */
var numbers = [1, 2, 3]
numbers.removeFirst()
print(numbers)

numbers.removeLast()
print(numbers)
/* RemoveFirstLast */
}

do {
/* RemoveAll */
var numbers1 = [1, 2, 3]
numbers1.removeAll()

var numbers2 = [1, 2, 3]
numbers2 = []

print(numbers1)
print(numbers2)
/* RemoveAll */
}

do {
/* Sort */
var numbers = [1, 3, 2]
numbers.sort()

print(numbers)
/* Sort */
}

do {
/* Reverse */
var numbers = [1, 3, 2]
numbers.reverse()

print(numbers)
/* Reverse */
}

do {
/* FirstLast */
let integers = [1, 2, 3]
print(integers.first!)
print(integers.last!)
/* FirstLast */
}

do {
/* Copy */
var integers1 = [1, 2, 3]
var integers2 = integers1

integers1[0] = 100
print(integers1)
print(integers2)
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

var objects1 = [user1, user2]
var objects2 = objects1

objects1[0].name = "ティム"
print(objects1.map { user in user.name })
print(objects2.map { user in user.name })
/* CopyClass */
}

do {
/* CopyStruct */
struct User {
    var name: String
}
let user1 = User(name: "スティープ")
let user2 = User(name: "ジョニー")

var objects1 = [user1, user2]
var objects2 = objects1

objects1[0].name = "ティム"
print(objects1.map { user in user.name })
print(objects2.map { user in user.name })
/* CopyStruct */
}
