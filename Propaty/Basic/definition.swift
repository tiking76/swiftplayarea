import Foundation

struct Greeting {
    var to = "Yoshiki"
    var body = "Hello"
}

let greeting1 = Greeting()
var greeting2 = Greeting()

greeting2.to = "tiking"

let to1 = greeting1.to
let to2 = greeting2.to

print(to1)
print(to2)

