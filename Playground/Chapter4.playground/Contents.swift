//: Playground - noun: a place where people can play

import UIKit

do {
/* Init */
let text = "テキスト"
print(text)
/* Init */
}

do {
/* Multi */
let text = "1行目\n2行目"
print(text)
/* Multi */
}

do {
/* Triple */
let text = """
           1行目
           2行目
               3行目
           """
print(text)
/* Triple */
}

do {
/* Empty */
let text1 = ""
let text2 = String()
print(text1)
print(text2)
/* Empty */
}

do {
/* IsEmpty */
func hello(name: String) {
    if name.isEmpty {
        print("名前を入力してください")
    } else {
        print("名前の入力ありがとうございます")
    }
}
hello(name: "スティーブ")
hello(name: "")
/* IsEmpty */
}

do {
/* WithoutIsEmpty */
let text = ""
print(text == "")
print(text.count == 0)
/* WithoutIsEmpty */
}

do {
/* Add */
let lastName = "田中"
let firstName = "太郎"
let fullName = lastName + firstName
print("あなたの名前は" + fullName + "さんですね")
/* Add */
}

do {
/* Replace */
let before = "◯◯株式会社 行"
let after = before.replacingOccurrences(of: "行", with: "御中")
print(after)
/* Replace */
}

do {
/* Uppercase */
let text1 = "text"
let text2 = text1.uppercased()
print(text2)
/* Uppercase */
}

do {
/* Lowercase */
let text1 = "TEXT"
let text2 = text1.lowercased()
print(text2)
/* Lowercase */
}

do {
/* Capitalize */
let text1 = "teXT"
let text2 = text1.capitalized
print(text2)
/* Capitalize */
}

do {
/* CharactersForIn */
let text = "text"
for character in text.characters {
    print(character)
}
var i = 1
for character in text.characters {
    print(String(i) + "文字目: " + String(character))
    i += 1
}
/* CharactersForIn */
}

do {
/* ForIn */
let text = "text"
for character in text {
    print(character)
}
/* ForIn */
}

do {
/* CharactersCount */
let text = "text"
print(text.characters.count)
/* CharactersCount */
}

do {
/* Count */
let text = "text"
print(text.count)
/* Count */
}

do {
/* MultiCount */
let text = "abcdeあいうえお☆"
print(text.count)
/* MultiCount */
}

do {
/* Interpolation */
let number = 1
let text1 = "text" + String(number) + String(number)
let text2 = "text\(number)\(number)"
print(text1)
print(text2)
/* Interpolation */
}

do {
/* InterpolationOptionals */
let text1: String? = "test1"
let text2: String! = "test2"
print("\(text1) \(text2)")
print("\(text1!) \(text2!)")
/* InterpolationOptionals */
}

do {
/* Format */
let text1 = String(format: "text%03d", 1)
let text2 = String(format: "text%03d", 20)
print(text1)
print(text2)

let date = String(format: "%04d/%02d/%02d", 2018, 1, 1)
print(date)
/* Format */
}

do {
/* MoreFormat */
print(String(format: "%%d   : %d", 1))
print(String(format: "%%4d  : %4d", 1))
print(String(format: "%%04d : %04d", 1))
print(String(format: "%%f   : %f", 1.0))
print(String(format: "%%.2f : %.2f", 1.0))
print(String(format: "%%@   : %@", "text"))
/* MoreFormat */
}

/* FormatArray */
let time = [8, 7, 31]
print(String(format: "%02d:%02d:%02d", arguments: time))
/* FormatArray */

do {
/* Convert */
let olympic = "TOKYO " + String(2018 + 2)
print(olympic)
/* Convert */
}

do {
/* Description */
let price = 200.0
let taxin = Int(price * 1.08)
print("税込: " + taxin.description + "円")
/* Description */
}

do {
/* Escape */
let text = "\"text\"\\"
print(text)
/* Escape */
}

do {
/* Unicode */
let text = "\u{2660}"
print(text)
/* Unicode */
}

do {
/* UnicodeScalars */
let text = "\u{2660}スペード"
let code = text.unicodeScalars.first!.value // 1文字目のユニコードの番号を取得
print(String(code, radix: 16))              // 16進数として表示
/* UnicodeScalars */
}

do {
/* Compare */
let text1 = "text"
let text2 = "text"
let text3 = "TEXT"
print(text1 == text2)
print(text1 == text3)
/* Compare */
}

do {
/* Contains */
let text = "あいうえお"
if text.contains("あ") {
    print("「あ」は含まれています")
}
if text.contains("か") {
    print("「か」は含まれています")
}
/* Contains */
}

do {
/* PrefixSuffix */
let text = "text"
print(text.hasPrefix("te"))
print(text.hasPrefix("TE"))
print(text.hasSuffix("xt"))
print(text.hasSuffix("XT"))
/* PrefixSuffix */
}

do {
/* Mutable */
var text = "テキスト"
text += "（変更後）"
print(text)
/* Mutable */
}

do {
/* Start */
let text = "3566-0020-2036-0505"
let start = text.startIndex
let char = text[start]
print("1桁目: " + String(char))
/* Start */
}

do {
/* End */
let text = "3566-0020-2036-0505"
let end = text.endIndex
let index = text.index(before: end)
print(text[index])
/* End */
}

do {
/* After */
let text = "3566-0020-2036-0505"
let start = text.startIndex
let after = text.index(after: start)
let offset = text.index(start, offsetBy: 4)
print("2文字目: \(text[after])")
print("5文字目: \(text[offset])")
/* After */
}

/* Range */
let text = "3566-0020-2036-0505"
let start = text.startIndex

let range1 = start...text.index(start, offsetBy: 4)
let range2 = start..<text.index(start, offsetBy: 4)
let range3 = text.index(start, offsetBy: 14)...
let range4 = ...text.index(start, offsetBy: 4)
let range5 = ..<text.index(start, offsetBy: 4)

print(text[range1])
print(text[range2])
print(text[range3])
print(text[range4])
print(text[range5])

/* Range */



