//: Playground - noun: a place where people can play

import UIKit

/*
do {
/* Nil */
var text = "text"
text = nil // Nil cannot be assigned to type 'String'
/* Nil */
}
*/

do {
/* OptionalSyntax */
let text1: String? = "text"
let text2: String? = nil
var text3: String? = "text"
var text4: String? = nil

print(text1)
print(text2)
print(text3)
print(text4)
/* OptionalSyntax */
}

/*
do {
/* Optionals */
let text1: String = "text"       // OK
let text2: String = nil          // NG: Nil cannot be assigned to type 'String'

let text3: String? = "text"      // OK
let text4: String? = nil         // OK

let texts = ["a", "b", "c"]
let first1: String = texts.first  // NG: Value of optional type 'String?' not unwrapped;
let first2: String? = texts.first // OK
/* Optionals */
}
*/

/* OptionalArray */
let texts1: [String?] = ["test1", nil, "test2"]
// let texts2: [String] = ["test1", nil, "test2"] // Nil is not compatible with expected element type 'String'
texts1.forEach { print($0) }
/* OptionalArray */

/*
do {
/* NotUnwrapped */
let text: String? = "abc"
let text2 = text + "def" // Value of optional type 'String?' not unwrapped; did you mean to use '!' or '?'?
/* NotUnwrapped */
}
*/

do {
/* IfBinding */
let text1: String? = "abc"
if let text1 = text1 {
    print(text1 + "def")
}

let text2: String? = nil
if let text2 = text2 {
    print(text2 + "ghi")
}
/* IfBinding */
}

do {
/* GuardBinding */
func printText(_ text: String?) {
    guard let text = text else {
        return
    }
    print(text)
}
printText("text")
printText(nil)
/* GuardBinding */
}

do {
/* OptionalChain */
class User {
    let name: String
    var child: User?

    init(name: String) {
        self.name = name
    }
}
let grandChild = User(name: "孫")

let child = User(name: "子")
child.child = grandChild

let user1 = User(name: "孫を持つユーザー")
user1.child = child
let user2 = User(name: "孫を持たないユーザー")

print(user1.child?.child?.name)
print(user2.child?.child?.name)
/* OptionalChain */
}

do {
/* OptionalChainAssignment */
class User {
    var name: String
    var child: User?

    init(name: String) {
        self.name = name
    }
}
let grandChild = User(name: "孫")

let child = User(name: "子")
child.child = grandChild

let user1 = User(name: "孫を持つユーザー")
user1.child = child
let user2 = User(name: "孫を持たないユーザー")

user1.child?.child?.name = "新しい孫の名前"
user2.child?.child?.name = "新しい孫の名前"

print(user1.child?.child?.name)
print(user2.child?.child?.name)
/* OptionalChainAssignment */
}

do {
/* NilCoalescing */
let text1: String? = "text"
let text2 = text1 ?? "text1は空っぽです"

let text3: String? = nil
let text4 = text3 ?? "text3は空っぽです"

print(text2)
print(text4)
/* NilCoalescing */
}

do {
/* Forced */
let text: String? = "text"
print(text!)
/* Forced */
}

/*
do {
/* ForcedError */
let text: String? = nil
print(text!) // fatal error: unexpectedly found nil while unwrapping an Optional value
/* ForcedError */
}
*/

do {
/* Implicitly */
let text: String! = "text"
print(text.uppercased())

let text2 = text
print(text2)
print(text2!)
/* Implicitly */
}

/*
do {
/* ImplicitlyError */
let text: String! = nil
print(text.uppercased()) // fatal error: unexpectedly found nil while unwrapping an Optional value
/* ImplicitlyError */
}
*/

do {
/* Throws */

// エラーを定義
enum FileError: Error {
    case cannotLoad
}

// ファイル読み込み成功を想定
func successfulLoad() throws -> String {
    return "読み込んだ内容1"
}

// ファイル読み込み失敗を想定
func failedLoad() throws -> String {
    throw FileError.cannotLoad
    return "読み込んだ内容2"
}
/* Throws */
}

/*
do {
/* NoTry */
enum FileError: Error {
    case cannotLoad
}
func successfulLoad() throws -> String {
    return "読み込んだ内容1"
}
func failedLoad() throws -> String {
    throw FileError.cannotLoad
    return "読み込んだ内容2"
}

print(successfulLoad()) // Call can throw but is not marked with 'try'
print(failedLoad())
/* NoTry */
}
*/

do {
/* Try */
enum FileError: Error {
    case cannotLoad
}
func successfulLoad() throws -> String {
    return "読み込んだ内容1"
}
func failedLoad() throws -> String {
    throw FileError.cannotLoad
    return "読み込んだ内容2"
}

if let content = try? successfulLoad() {
    print(content)
}
if let content = try? failedLoad() {
    print(content)
}
/* Try */
}

/*
do {
/* ForcedTry */
enum FileError: Error {
    case cannotLoad
}
func successfulLoad() throws -> String {
    return "読み込んだ内容1"
}
func failedLoad() throws -> String {
    throw FileError.cannotLoad
    return "読み込んだ内容2"
}

print(try! successfulLoad())
print(try! failedLoad()) // fatal error: 'try!' expression unexpectedly raised an error: FileError
/* ForcedTry */
}
*/

do {
/* Catch */
enum FileError: Error {
    case cannotLoad
}
func successfulLoad() throws -> String {
    return "読み込んだ内容1"
}
func failedLoad() throws -> String {
    throw FileError.cannotLoad
    return "読み込んだ内容2"
}

do {
    try failedLoad()
} catch FileError.cannotLoad {
    print("ファイルを読み込めませんでした")
}
/* Catch */
}

do {
/* Is */
let numbers: [Any] = [1, 2, 3, 4.5, 5.5]
var intCount = 0
var doubleCount = 0

for n in numbers {
    if n is Int {
        intCount += 1
    } else if n is Double {
        doubleCount += 1
    }
}

print(intCount)
print(doubleCount)
/* Is */
}

do {
/* As */
let numbers: [Any] = [1, 2, 3, 4.5, 5.5]
var total = 0

for n in numbers {
    if let int = n as? Int {
        total += 1
    } else if let double = n as? Double {
        let rounded = round(double)
        print(rounded)
        total += Int(rounded)
    }
}

print(total)
/* As */
}

/*
do {
/* ForcedAs */
let numbers: [Any] = [1, 2, 3, 4.5, 5.5]
var total = 0

for n in numbers {
    let double = n as! Double // Could not cast value of type 'Swift.Int' to 'Swift.Double'.

    let rounded = round(double)
    print(rounded)
    total += Int(rounded)
}

print(total)
/* ForcedAs */
}
*/

