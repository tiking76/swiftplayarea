import Foundation

struct SomeStruct {
    var variable = 123
    let constant = 456
    static var staticVariable = 789
    static let staticConstant = 890
}

let someStruct = SomeStruct()
print(someStruct.variable)
print(someStruct.constant)
//staticプロパティなので、インスタンスではなく型のプロパティについてアクセスする
print(SomeStruct.staticVariable)
print(SomeStruct.staticConstant)
