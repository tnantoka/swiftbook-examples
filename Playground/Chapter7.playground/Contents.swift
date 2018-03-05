//: Playground - noun: a place where people can play

do {
/* Init */
let integers: Set = [1, 2, 3]
print(integers)

let floats: Set<Float> = [1.0, 2.0, 3.0]
print(floats)
/* Init */
}

do {
/* InitUniq */
let integers: Set = [1, 2, 3, 2, 1]
print(integers)
/* InitUniq */
}

do {
/* InitWithArray */
let integerArray = [1, 2, 3]
let integerSet = Set(integerArray)

print(type(of: integerArray))
print(type(of: integerSet))
/* InitWithArray */
}

do {
/* Empty */
let integers = Set<Int>()
print(integers)
print(integers.isEmpty)

let integers2: Set<Int> = []
print(integers2)
print(integers2.isEmpty)
/* Empty */
}

do {
/* Count */
let integers: Set = [1, 2, 3]
print(integers.count)
/* Count */
}

do {
/* First */
let integers: Set = [1, 2, 3]
print(integers)
print(integers.first)
/* First */
}

do {
/* ForEach */
let integers: Set = [1, 2, 3]

integers.forEach { i in print(i) }
/* ForEach */
}

do {
/* ForEachShorthand */
let integers: Set = [1, 2, 3]

integers.forEach { print($0) }
/* ForEachShorthand */
}

do {
/* ForIn */
let integers: Set = [1, 2, 3]

for i in integers {
    print(i)
}
/* ForIn */
}

do {
/* Enumerated */
let numbers: Set = [1, 2, 3]

for (i, n) in numbers.enumerated() {
    print("\(i): \(n)")
}
/* Enumerated */
}

do {
/* Index */
let numbers: Set = [1, 2, 3]
let index = numbers.index(of: 2)
let num = numbers[index!]
print(num)
/* Index */
}

do {
/* Contains */
let integers: Set = [1, 2, 3]

print(integers.contains(2))
print(integers.contains(4))
/* Contains */
}

do {
/* MinMax */
let integers: Set = [1, 2, 3]
let empty: Set<Int> = []

print(integers.min())
print(integers.max())
print(empty.min())
print(empty.max())
/* MinMax */
}

do {
/* MinMaxString */
let integers: Set = ["い", "う", "あ"]

print(integers.min())
print(integers.max())
/* MinMaxString */
}

do {
/* Compare */
let set1: Set = [1, 3, 5]
let set2: Set = [1, 3, 5]
let set3: Set = [2, 4, 6]
let set4: Set = [1, 2, 3, 4, 5, 6]

print("set1 == set2:", set1 == set2)
print("set1 == set3:", set1 == set3)

print("set1.isSubset(of: set2):", set1.isSubset(of: set2))
print("set1.isSubset(of: set4):", set1.isSubset(of: set4))

print("set1.isStrictSubset(of: set2):", set1.isStrictSubset(of: set2))
print("set1.isStrictSubset(of: set4):", set1.isStrictSubset(of: set4))

print("set2.isSuperset(of: set1):", set2.isSuperset(of: set1))
print("set4.isSuperset(of: set1):", set4.isSuperset(of: set1))

print("set2.isStrictSuperset(of: set1):", set2.isStrictSuperset(of: set1))
print("set4.isStrictSuperset(of: set1):", set4.isStrictSuperset(of: set1))

print("set1.isDisjoint(with: set3):", set1.isDisjoint(with: set3))
print("set1.isDisjoint(with: set4):", set1.isDisjoint(with: set4))
/* Compare */
}

do {
/* Map */
let integers: Set = [1, 2, 3]

print(integers.map { i in i * 2 })
/* Map */
}

do {
/* MapShorthand */
let integers: Set = [1, 2, 3]

print(integers.map { $0 * 2 })
/* MapShorthand */
}

do {
/* Sort */
let integers: Set = [1, 2, 3]
print(integers.sorted())
/* Sort */
}

do {
/* Reverse */
let integers: Set = [1, 2, 3]

print(integers.reversed())
/* Reverse */
}

do {
/* Intersection */
let rooms1: Set = [101, 102, 103, 104]    // 1階の部屋番号
let rooms2: Set = [201, 202, 203, 204]    // 2階の部屋番号
let vacancies: Set = [101, 103, 201, 204] // 空き部屋番号

print(rooms1.intersection(vacancies))
print(rooms2.intersection(vacancies))
/* Intersection */
}

do {
/* Union */
let rooms1: Set = [101, 102, 103, 104]    // 1階の部屋番号
let rooms2: Set = [201, 202, 203, 204]    // 2階の部屋番号

print(rooms1.union(rooms2))
/* Union */
}

do {
/* Subtracting */
let rooms1: Set = [101, 102, 103, 104]    // 1階の部屋番号
let rooms2: Set = [201, 202, 203, 204]    // 2階の部屋番号
let vacancies: Set = [101, 103, 201, 204] // 空き部屋番号

print(rooms1.subtracting(vacancies))
print(rooms2.subtracting(vacancies))
/* Subtracting */
}

do {
/* Difference */
let day1: Set = [101, 102, 103, 104]
let day2: Set = [103, 104, 105, 106]

print(day1.symmetricDifference(day2))
/* Difference */
}

do {
/* Mutable */
var integers: Set = [1, 2, 3]
print(integers)

var floats: Set<Float> = [1.0, 2.0, 3.0]
print(floats)
/* Mutable */
}

do {
/* Insert */
var integers: Set = [1, 2, 3]

integers.insert(2)
integers.insert(3)
integers.insert(4)

print(integers)
/* Insert */
}

do {
/* Remove */
var integers: Set = [1, 2, 3]

print(integers.remove(2))
print(integers.remove(4))

print(integers)
/* Remove */
}

do {
/* RemoveFirst */
var integers: Set = [1, 2, 3]
integers.removeFirst()

print(integers)
/* RemoveFirst */
}

do {
/* RemoveAll */
var integers1: Set = [1, 2, 3]
var integers2: Set = [1, 2, 3]

integers1.removeAll()
integers2 = []

print(integers1)
print(integers2)
/* RemoveAll */
}

/* RemoveIndex */
var integers: Set = [1, 2, 3]
var texts: Set = ["a", "b", "c"]

let index1 = integers.index(of: 2)
integers.remove(at: index1!)
let index2 = texts.index(of: "c")
texts.remove(at: index2!)

print(integers)
print(texts)
/* RemoveIndex */
