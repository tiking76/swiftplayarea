/*

 */


import Foundation

protocol RandomValueGenerator {
    associatedtype Value
    func randomValue() -> Value
}

struct IntegeRandomValueGenerator : RandomValueGenerator {
    func randomValue() -> Int {
        return 1
    }
}

struct StringRandomValueGenerator : RandomValueGenerator {
    func randomValue() -> String {
        return "str"
    }
}

let a = IntegeRandomValueGenerator()
let b = StringRandomValueGenerator()
let num = a.randomValue()
let str = b.randomValue()
print(num)
print(str)

