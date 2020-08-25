import Foundation

let none = Optional<Int>.none
print(".none: \(String(describing: none))")

let some = Optional<Int>.some(1)
print(".none: \(String(describing: some))")

/*
.none: nil
.some: Optional(1)
*/

let optionalA = Optional("a")

if let a = optionalA {
	print(type(of: a))
}

//String


let optionalInt : Int? = 1
let int = optionalInt ?? 3
print(int) //1



let optionalInt2 : Int? = nil
let int2 = optionalInt2 ?? 3
print(int2) //3

let hoge : Int? = 0
let fuga = hoge!
print(fuga) //0
