//: Playground - noun: a place where people can play

import UIKit

/* PrintNumber */
print(123)
/* PrintNumber */

/* PrintExpression */
print(1 + 2 + 3)
print(1+2+3)
/* PrintExpression */

/*
/* PrintError */
print(1 +2 +3) // エラー
print(1+ 2+ 3) // エラー
print(1 +2+ 3) // エラー
/* PrintError */
*/

/* PrintSubtract */
print(1 - 2 - 3)
/* PrintSubtract */

/* Parentheses */
print(1 - (2 - 3))
/* Parentheses */

/* Operators */
print(8 + 3)
print(8 - 3)
print(8 * 3)
print(8 / 3)
/* Operators */

/* Decimal */
print(8.0 / 3.0)
print(8.0 / 3)
print(8 / 3.0)
/* Decimal */

/* PrintString */
print(8)
print("8")
/* PrintString */

/* AddString */
print(8 + 3)
print(8 - 3)
print("8" + "3")
// print("8" - "3") // エラー
/* AddString */

do {
/* Naming */
let test = "test"
let Test = "test"
let test2 = "test"
let _test = "test"
let テスト = "test"
let `let` = "test"

// let test = "test"   // 既に使われている
// let 2test = "test"  // 数字から始まる
// let test-3 = "test" // 演算子を含む
// let let = "test"    // Swiftに予約されている名前を``無しで使用
/* Naming */
}

/* PrintTax */
print(2800 * 1.08)
/* PrintTax */

do {
/* TaxWithName */
let price = 2800.0
let taxRate = 1.08
/// [marker2]
print(price * taxRate)
/// [marker2]
/* TaxWithName */
}

do {
/* LetTaxIn */
let price = 2800.0
let taxRate = 1.08
let taxIn = price * taxRate

print(taxIn)
/* LetTaxIn */
}

do {
/* LeftRight */
let left = 8
let right = 3

print(left + right)
print(left - right)
print(left * right)
print(left / right)
/* LeftRight */
}

/* EditRawNumber */
print(10 + 5)
print(10 - 5)
print(10 * 5)
print(10 / 5)
/* EditRawNumber */

do {
/* EditLeftRight */
let left = 10
let right = 5

print(left + right)
print(left - right)
print(left * right)
print(left / right)
/* EditLeftRight */
}

/*
do {
/* Imutable */
let price = 2800.0
price = price - 800 // error: cannot assign to value: 'price' is a 'let' constant
let taxRate = 1.08
let taxIn = price * taxRate

print(taxIn)
/* Imutable */
}
*/

do {
/* Mutable */
var price = 2800.0
price = price - 800
let taxRate = 1.08
let taxIn = price * taxRate

print(taxIn)
/* Mutable */
}

do {
/* NeverMutated */
var price = 2800.0
price = price - 800
var taxRate = 1.08 // Variable 'taxRate' was never mutated; consider changing to 'let' constant
let taxIn = price * taxRate

print(taxIn)
/* NeverMutated */
}

do {
/* SingleLineComment */
let price = 2800.0 // 税抜き価格（円）
let taxRate = 1.08 // 消費税率
let taxIn = price * taxRate

print(taxIn)
/* SingleLineComment */
}

do {
/* SingleLineComment2 */
// 税抜き価格（円）
let price = 2800.0
// 消費税率
let taxRate = 1.08
let taxIn = price * taxRate

print(taxIn)
/* SingleLineComment2 */
}

do {
/* MultilineComment */
/*
 * 税込価格を計算するプログラム
 * （単位は日本円）
 */
let price = 2800.0
let taxRate = 1.08
let taxIn = price * taxRate

print(taxIn)
/* MultilineComment */
}

do {
/* CommentOut */
let price = 2800.0
/*
var price = 2800.0
price = price - 800
*/
let taxRate = 1.08
let taxIn = price * taxRate

print(taxIn)
/* CommentOut */
}

/* NestedComment */
print(1) // 数値1を表示

/*
print(2) // 数値2を表示
*/

print(3) // 数値3を表示

// print(4) // 数値4を表示

/*
print(5) /* 数値5を表示 */
*/
/* NestedComment */

do {
/* Uncomment */
// let price = 2800.0
// /*
 var price = 2800.0
 price = price - 800
// */
let taxRate = 1.08
let taxIn = price * taxRate

print(taxIn)
/* Uncomment */
}

do {
/* Type */
let test1 = 1
let test2: UInt = 2
let test3 = 3.0
let test4: Float = 4.0
print(type(of: test1))
print(type(of: test2))
print(type(of: test3))
print(type(of: test4))
/* Type */
}

do {
/* TupleInit */
let student = (50821, "田中", "太郎")
let score: (String, Float) = ("国語", 75.0)

print(student)
print(score)
/* TupleInit */
}

do {
/* TupleValue */
let student = (50821, "田中", "太郎")
let score: (String, Float) = ("国語", 75.0)

let (id, familyName, firstName) = student
print(id)
print(familyName)
print(firstName)

let (_, japanese) = score
print(japanese)
/* TupleValue */
}

do {
/* TupleIndex */
let student = (50821, "田中", "太郎")
let score: (String, Float) = ("国語", 75.0)

print(student.1)
print(student.2)
print(score.0)
print(score.1)
/* TupleIndex */
}

do {
/* TupleElementName */
let student = (id: 50821, familyName: "田中", firstName: "太郎")
let score: (subject: String, point: Float) = ("国語", 75.0)

print(student.0, student.1, student.2)
print(student.id, student.familyName, student.firstName)
print(score.0, score.1)
print(score.subject, score.point)
/* TupleElementName */
}

do {
/* TupleMutable */
var student = (id: 50821, familyName: "田中", firstName: "太郎")
var score: (subject: String, point: Float) = ("国語", 75.0)

student = (id: 46527, familyName: "田中", firstName: "太郎")

student.familyName = "鈴木"
student.2 = "次郎"

score.subject = "数学"
score.1 = 50.0

print(student.0, student.1, student.2)
print(student.id, student.familyName, student.firstName)
print(score.0, score.1)
print(score.subject, score.point)
/* TupleMutable */
}

do {
/* ReturnTuple */
func getScore() -> (String, Int) {
    return ("国語", 90)
}

let (subject, point) = getScore()
print(subject + "の点数は" + String(point) + "点です")
/* ReturnTuple */
}

/* Arithmetic */
print(1 + 2)
print(5 - 3)
print(2 * 3)
print(10.0 / 2.5)
print(10 % 3)
/* Arithmetic */

/* Unary */
let positive = 8
let negative = -8

print(-positive)
print(+positive)
print(-negative)
print(+negative)
/* Unary */

/* Comparison */
print(3 == 3) // true
print(3 == 2) // false

print(3 != 3) // false
print(3 != 2) // true

print(3 > 3) // false
print(3 > 2) // true

print(3 < 4) // true
print(3 < 3) // false

print(3 >= 4) // false
print(3 >= 3) // true

print(3 <= 3) // true
print(3 <= 2) // false
/* Comparison */

do {
/* Logical */
let a = true
let b = false

print(!a) // false
print(!b) // true

print(a && a) // true
print(a && b) // false
print(b && b) // false

print(a || a) // true
print(a || b) // true
print(b || b) // false
/* Logical */
}

do {
/* Assignment */
var a: Bool // Bool型の変数aを宣言
let b: Bool // Bool型の定数bを宣言
a = true    // 変数aをtrueで初期化
b = false   // 定数bをfalseで初期化
print(a)
a = b       // 変数aを変数bの値で更新
print(a)
/* Assignment */
}

do {
/* Compound */
var a = 5

a += 1
print(a)

a -= 1
print(a)

a *= 2
print(a)

a /= 2
print(a)

a %= 2
print(a)
/* Compound */
}

do {
/* If */
let num = 128
if num % 2 == 0 {
    print("偶数です")
}
/* If */
}

do {
/* IfElse */
let num = 127
if num % 2 == 0 {
    print("2の倍数です")
} else {
    print("2の倍数ではありません")
}
/* IfElse */
}

do {
/* ElseIf */
let num = 13
if num % 2 == 0 {
    print("2の倍数です")
} else if num % 3 == 0 {
    print("3の倍数です")
} else {
    print("2の倍数でも3の倍数でもありません")
}
/* ElseIf */
}

do {
/* NestedIf */
let num = 48
if num % 2 == 0 {
    if num % 3 == 0 {
        print("2と3の公倍数です")
    } else {
        print("2の倍数です")
    }
} else if num % 3 == 0 {
    print("2の倍数ではなく3の倍数です")
} else {
    print("2の倍数でも3の倍数でもありません")
}
/* NestedIf */
}

do {
/* NoNest */
let num = 48
if num % 2 == 0 && num % 3 == 0 {
    print("2と3の公倍数です")
} else if num % 2 == 0 && num % 3 != 0 {
    print("2の倍数です")
} else if num % 2 != 0 && num % 3 == 0 {
    print("2の倍数ではなく3の倍数です")
} else if num % 2 != 0 && num % 3 != 0 {
    print("2の倍数でも3の倍数でもありません")
}
/* NoNest */
}

/* IfOr */
let num = 4
if num % 2 == 0 || num % 3 == 0 {
    print("2か3の倍数です")
} else {
    print("2の倍数でも3の倍数でもありません")
}
/* IfOr */

do {
/* Ternary */
let num1 = 1
let result1 = num1 % 2 == 1 ? "奇数です" : "偶数です"
print(result1)

let num2 = 0
let result2 = num2 % 2 == 1 ? "奇数です" : num2 == 0 ? "0です" : "偶数です"
print(result2)
/* Ternary */
}

do {
/* Switch */
let rank = "S"
switch rank {
case "SS", "S":
    print("大当たりです")
case "A":
    print("中当たりです")
case "B":
    print("普通です")
default:
    print("外れです")
}
/* Switch */
}

do {
/* SwitchBreak */
let rank = "A"
switch rank {
case "SS", "S":
    print("大当たりです")
    break
case "A":
    print("中当たりです")
case "B":
    print("普通です")
default:
    break
}
/* SwitchBreak */
}

do {
/* Fallthrough */
let rank = "A"
var star = ""
switch rank {
case "SS", "S":
    star += "★"
    fallthrough
case "A":
    star += "★"
    fallthrough
case "B":
    star += "★"
    fallthrough
default:
    print(rank, star)
}
/* Fallthrough */
}

do {
/* SwitchRange */
let score = 65
switch score {
case 80...:
    print("高得点です")
case 60..<80:
    print("普通の点数です")
default:
    print("低い点数です")
}
/* SwitchRange */
}

do {
/* SwitchTuple */
let score = (100, 80, 75)
switch score {
case (100, 100, 100):
    print("全て満点です")
case (100, _, _), (_, 100, _), (_, _, 100):
    print("1つ満点です")
case (70..., 70..., 70...):
    print("全体的に高得点です")
default:
    print("頑張りましょう")
}
/* SwitchTuple */
}

do {
/* ValueBinding */
let notice = ("地震が発生しました", true)
switch notice {
case let (message, true):
    print("[重要]", message)
case (let message, false):
    print("[お知らせ]", message)
}
/* ValueBinding */
}

do {
/* SwitchWhere */
let paperSize = (300, 450)
switch paperSize {
case let (width, height) where width > height:
    print("横長の用紙です")
case (let width, let height) where width < height:
    print("縦長の用紙です")
default:
    print("正方形の用紙です")
}
/* SwitchWhere */
}

do {
/* ForIn */
for i in 0..<5  {
    let message = i % 2 == 0 ? "偶数" : "奇数"
    print(i, message)
}
/* ForIn */
}

do {
/* ForInArray */
let names = ["スティーブ", "ジョニー", "ティム"]
for name in names {
    print(name)
}
/* ForInArray */
}

do {
/* ForInCount */
var num = 1
for _ in 0..<8  {
    num *= 2
}
print(num)
/* ForInCount */
}

do {
/* ForInDict */
let phones = [
    "iPhone 8": 4.7,
    "iPhone 8 Plus": 5.5,
    "iPhone X": 5.8,
    "iPhone SE": 4.0,
]
for (name, size) in phones {
    print(name, size)
}
/* ForInDict */
}

do {
/* ForInString */
let string = "あいうえおかきくけこさしすせそたちつてとなにぬねの"
for (i, s) in string.enumerated() {
    if i % 5 == 0 {
        print(s)
    }
}
/* ForInString */
}

do {
/* ForInStride */
for i in stride(from: 0, to: 10, by: 2) {
    print(i)
}
/* ForInStride */
}

do {
/* StrideThrough */
for i in stride(from: 0, through: 10, by: 2) {
    print(i)
}
/* StrideThrough */
}

do {
/* While */
var i = 0
while i < 5 {
    print(i)
    i += 1
}
/* While */
}

do {
/* Continue */
var i = 0
while i < 5 {
    i += 1
    if i % 2 == 0 {
        continue
    }
    print(i, "奇数です")
}
/* Continue */
}

do {
/* Break */
var i = 0
while i < 5 {
    if i > 2 {
        break
    }
    print(i)
    i += 1
}
/* Break */
}

do {
/* RepeatWhile */
var i = 0
repeat {
    print(i)
    i += 1
} while i < 5

var j = 5
repeat {
    print(j)
    j += 1
} while j < 5
/* RepeatWhile */
}

do {
/* ScopeIf */
let num = 2
if num % 2 == 0 {
    let message = "偶数です"
    print(num, message)     // 外側で定義されたnumは使える
}
// print(message)           // 内側で定義されたmessageは使えない
/* ScopeIf */
}

/* Do */
do {
    let test = "test1"
    print(test)
}

do {
    let test = "test2"
    print(test)
}
/* Do */

/*
do {
/* NoConversion */
let price = 2800
let taxRate = 1.08
let taxIn = price * taxRate // エラー

print(taxIn + "円です")      // エラー
/* NoConversion */
}
*/

do {
/* Conversion */
let price = 2800
let taxRate = 1.08
let taxIn = Double(price) * taxRate

print(String(taxIn) + "円です")
/* Conversion */
}

do {
/* ConversionString */
let intString = "100"
let doubleString = "10.5"

print(Int(intString)! + 10)
print(Double(doubleString)! + 4.5)
/* ConversionString */
}

do {
/* RangeContains */
let closed = 0...3
let halfOpen = 0..<3

print(closed.contains(0))
print(closed.contains(3))
print(halfOpen.contains(0))
print(halfOpen.contains(3))
/* RangeContains */
}

do {
/* OneSidedContains */
let closed1 = 0...
let closed2 = ...3
let halfOpen1 = ..<3

print(closed1.contains(-1))
print(closed1.contains(3))
print(closed2.contains(-1))
print(closed2.contains(3))
print(halfOpen1.contains(-1))
print(halfOpen1.contains(3))
/* OneSidedContains */
}

do {
/* RangeType */
let doubleHalfOpen = 0..<1.0

print(doubleHalfOpen.contains(0.5))
print(doubleHalfOpen.contains(1.5))
/* RangeType */
}

do {
/* EmptyRange */
let range1 = 0...0
let range2 = 0..<0

print(range1.contains(0))
print(range1.isEmpty)

print(range2.contains(0))
print(range2.isEmpty)
/* EmptyRange */
}

do {
/* BitwiseNOT */
let bits1: UInt8 = 0b00000111
let bits2: UInt8 = 7
let not1 = ~bits1
let not2 = ~bits2

print(bits1)
print(bits2)
print(not1)
print(not2)
print(not1 == 0b11111000)
print(not2 == 0b11111000)
/* BitwiseNOT */
}

do {
/* BitwiseAND */
let input1: UInt8 = 0b00011111
let input2: UInt8 = 0b11111000
let output = input1 & input2

print(output)
print(output == 0b00011000)
/* BitwiseAND */
}

do {
/* BitwiseOR */
let input1: UInt8 = 0b10000001
let input2: UInt8 = 0b11110000
let output = input1 | input2

print(output)
print(output == 0b11110001)
/* BitwiseOR */
}

do {
/* BitwiseXOR */
let input1: UInt8 = 0b10000001
let input2: UInt8 = 0b11110000
let output = input1 ^ input2

print(output)
print(output == 0b01110001)
/* BitwiseXOR */
}

do {
/* LeftShift */
let bits: UInt8 = 0b00000010
print(bits << 1)
print(bits << 1 == 0b00000100)
print(bits << 2)
print(bits << 2 == 0b00001000)
print(bits << 3)
print(bits << 3 == 0b00010000)
print(bits << 4)
print(bits << 4 == 0b00100000)
/* LeftShift */
}

do {
/* RightShift */
let bits: UInt8 = 0b00100000
print(bits >> 1)
print(bits >> 1 == 0b00010000)
print(bits >> 2)
print(bits >> 2 == 0b00001000)
print(bits >> 3)
print(bits >> 3 == 0b00000100)
print(bits >> 4)
print(bits >> 4 == 0b00000010)
/* RightShift */
}

/* Color */
let materialRed: UInt32 = 0xF44336

let blueComponent = materialRed & 0x0000FF
let greenComponent = (materialRed & 0x00FF00) >> 8
let redComponent = (materialRed & 0xFF0000) >> 16

print(redComponent, greenComponent, blueComponent)
/* Color */
