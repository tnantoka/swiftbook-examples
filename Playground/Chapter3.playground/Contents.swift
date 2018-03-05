//: Playground - noun: a place where people can play

import UIKit

do {
/* Random */
print(arc4random())
print(arc4random())

print(arc4random() % 10)
print(arc4random() % 10)
/* Random */
}

do {
/* NoFunc */
var total: UInt32 = 0
var even: UInt32 = 0

// 1つめの数字
let num1 = arc4random() % 10 + 1
print(num1)
total += num1
if num1 % 2 == 0 {
    even += 1
}

// 2つめの数字
let num2 = arc4random() % 10 + 1
print(num2)
total += num2
if num2 % 2 == 0 {
    even += 1
}

// 3つめの数字
let num3 = arc4random() % 10 + 1
print(num3)
total += num3
if num3 % 2 == 0 {
    even += 1
}

print()
print(total)
print(even)
/* NoFunc */
}

do {
/* Func */
var total: UInt32 = 0
var even: UInt32 = 0

// ランダム生成、合計計算、偶数カウントを行なう関数を定義
func randomIncrementAndCountEven() {
    let num = arc4random() % 10 + 1
    print(num)
    total += num
    if num % 2 == 0 {
        even += 1
    }
}

// 定義した関数を3回呼び出す
randomIncrementAndCountEven()
randomIncrementAndCountEven()
randomIncrementAndCountEven()

print()
print(total)
print(even)
/* Func */
}

do {
/* EditFunc */
var total: UInt32 = 0
var even: UInt32 = 0

// ランダム生成、合計計算、偶数カウントを行なう関数を定義
func randomIncrementAndCountEven() {
    let num = arc4random() % 5 + 1 // 変更
    print(num)
    total += num
    if num % 2 == 0 {
        even += 1
    }
}

// 定義した関数を3回呼び出す
randomIncrementAndCountEven()
randomIncrementAndCountEven()
randomIncrementAndCountEven()
randomIncrementAndCountEven() // 追加

print()
print(total)
print(even)
/* EditFunc */
}

do {
/* Return */
var total: UInt32 = 0
var even: UInt32 = 0

// ランダムな数字を生成して返す関数
func generateRandomNumber() -> UInt32 {
    return arc4random() % 10 + 1
}

func randomIncrementAndCountEven() {
    let num = generateRandomNumber() // ランダムな数字を受け取る
    print(num)
    total += num
    if num % 2 == 0 {
        even += 1
    }
}

randomIncrementAndCountEven()
randomIncrementAndCountEven()
randomIncrementAndCountEven()

print()
print(total)
print(even)
/* Return */
}

do {
/* Arguments */
var total: UInt32 = 0
var even: UInt32 = 0

func generateRandomNumber() -> UInt32 {
    return arc4random() % 10 + 1
}

// 偶数を数える関数
func countEven(num: UInt32) {
    if num % 2 == 0 {
        even += 1
    }
}

func randomIncrementAndCountEven() {
    let num = generateRandomNumber()
    print(num)
    total += num
    countEven(num: num) // 偶数を数える
}

randomIncrementAndCountEven()
randomIncrementAndCountEven()
randomIncrementAndCountEven()

print()
print(total)
print(even)
/* Arguments */
}

do {
/* NoDefault */
func generateRandomNumber(max: UInt32) -> UInt32 {
    return arc4random() % max + 1
}

print(generateRandomNumber(max: 5))
print(generateRandomNumber(max: 10))
/* NoDefault */
}

do {
/* Default */
func generateRandomNumber(max: UInt32 = 10) -> UInt32 {
    return arc4random() % max + 1
}

print(generateRandomNumber(max: 5))
print(generateRandomNumber())
/* Default */
}

do {
/* Label */
func generateRandomNumber(lessThanOrEqualTo max: UInt32 = 10) -> UInt32 {
    return arc4random() % max + 1
}

print(generateRandomNumber(lessThanOrEqualTo: 5))
print(generateRandomNumber())
/* Label */
}

do {
/* NoLabel */
func generateRandomNumber(_ max: UInt32 = 10) -> UInt32 {
    return arc4random() % max + 1
}

print(generateRandomNumber(5))
print(generateRandomNumber())
/* NoLabel */
}

do {
/* DebugIdentifiers */
func hello() {
    print(#function)
    print(#file)
    print(#line)
    print(#column)
}
hello()
/* DebugIdentifiers */
}

/*
do {
/* DivisionByZero */
func generateRandomNumber(max: UInt32) -> UInt32 {
    return arc4random() % max + 1
}

print(generateRandomNumber(max: 0)) // fatal error: Remainder of division by zero
/* DivisionByZero */
}
*/

do {
/* Guard */
func generateRandomNumber(max: UInt32) -> UInt32 {
    guard max > 0 else {
        return 0
    }
    return arc4random() % max + 1
}

print(generateRandomNumber(max: 0))
/* Guard */
}

do {
/* IfReturn */
func generateRandomNumber(max: UInt32) -> UInt32 {
    if max < 1 {
        return 0
    }
    return arc4random() % max + 1
}

print(generateRandomNumber(max: 0))
/* IfReturn */
}

/*
do {
/* IfPrint */
func generateRandomNumber(max: UInt32) -> UInt32 {
    if max < 1 {
        print("maxに1以下の数字は指定できません")
    }
    return arc4random() % max + 1
}

print(generateRandomNumber(max: 0)) // fatal error: Remainder of division by zero
/* IfPrint */
}
*/

/*
do {
/* GuardPrint */
func generateRandomNumber(max: UInt32) -> UInt32 {
    guard max > 0 else {
        print("maxに1以下の数字は指定できません") // 'guard' body may not fall through, consider using a 'return' or 'throw' to exit the scope
    }
    return arc4random() % max + 1
}

print(generateRandomNumber(max: 0))
/* GuardPrint */
}
*/

do {
/* GuardFor */
for i in 0..<10 {
    guard i > 4 else { // 4以下の場合は処理しない
        continue
    }
    guard i < 8 else { // 8以上になったらループを抜ける
        break
    }
    print(i)
}
/* GuardFor */
}

do {
/* NoDefer */
func isNormal(number: Int) {
    print("正常値の判定を開始します。")
    guard number > 30 else {
        print("正常値の判定を終了します。")
        return
    }
    guard number < 70 else {
        print("正常値の判定を終了します。")
        return
    }
    print("正常値です")
    print("正常値の判定を終了します。")
}

isNormal(number: 50)
/* NoDefer */
}

do {
/* Defer */
func isNormal(number: Int) {
    defer {
        print("正常値の判定を終了します。")
    }
    print("正常値の判定を開始します。")
    guard number > 30 else {
        return
    }
    guard number < 70 else {
        return
    }
    print("正常値です")
}

isNormal(number: 20)
/* Defer */
}

do {
/* DeferOrder */
func isNormal(number: Int) {
    defer {
        print("正常値の判定を終了します。")       // 3. 先に書かれたこの処理が後に実行される
    }
    defer {
        print("正常値の判定がもうすぐ終了します。") // 2. 後に書かれたこの処理が先に実行される
    }
    print("正常値の判定を開始します。")
    guard number > 30 else {
        return                               // 1. 異常値のためここで関数を抜ける
    }
    guard number < 70 else {
        return
    }
    defer {
        print("正常値の判定中です。")            // 異常値の場合はこの処理は実行されない
    }
    print("正常値です")
}

isNormal(number: 20)
/* DeferOrder */
}

//let double = { (x: Int) -> Int in
//    return x * 2
//}
//func double(x: Int) -> Int {
//    return x * 2
//}
//
//func callClosure(closure: (Int) -> Int) {
//    print(closure(2))
//}
//
//callClosure(closure: double)

do {
/* ClosureExpression */
let double = { (x: Int) -> Int in
    return x * 2
}

print(double(2))
print(double(3))
/* ClosureExpression */
}

do {
/* ClosureArg */
func callClosure(closure: (String) -> Void) {
    closure("test")
}

let printText = { (text: String) -> Void in
    print(text)
}
callClosure(closure: printText)
/* ClosureArg */
}

do {
/* NoType */
func callClosure(closure: (String) -> Void) {
    closure("test")
}

callClosure(closure: { text in
    print(text)
})
/* NoType */
}

do {
/* ClosureShorthand */
func callClosure(closure: (String) -> Void) {
    closure("test")
}

callClosure(closure: { print($0) })
/* ClosureShorthand */
}

do {
/* TrailingClosure */
func callClosure(closure: (String) -> Void) {
    closure("test")
}

callClosure { print($0) }
/* TrailingClosure */
}

do {
/* Unused */
func callClosure(closure: (String) -> Void) {
    closure("test")
}

callClosure { _ in
    print("test2")
}
/* Unused */
}

do {
/* NoClosure */
func printEach(preprocessor: (Int) -> Int) {
    print(preprocessor(1))
    print(preprocessor(2))
    print(preprocessor(3))
    print()
}

func zero(x: Int) -> Int {
    return 0
}

func single(x: Int) -> Int {
    return x
}

func double(x: Int) -> Int {
    return x * 2
}

func triple(x: Int) -> Int {
    return x * 3
}

printEach(preprocessor: zero)
printEach(preprocessor: single)
printEach(preprocessor: double)
printEach(preprocessor: triple)
/* NoClosure */
}

do {
/* Closure */
func printEach(preprocessor: (Int) -> Int) {
    print(preprocessor(1))
    print(preprocessor(2))
    print(preprocessor(3))
    print()
}

printEach { _ in 0 }
printEach { $0 }
printEach { $0 * 2 }
printEach { $0 * 3 }
/* Closure */
}
