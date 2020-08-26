import Foundation

struct Greeting {
    static let signature = "Sent from iphone"
    var to = "Yoshiki"
    var body = "Hello"
}

func print(greeting: Greeting) {
    print("to: \(greeting.to)")
    print("body: \(greeting.body)")
    print("signature: \(Greeting.signature)")
}

let greeting1 = Greeting()
var greeting2 = Greeting()

greeting2.to = "tiking"
greeting2.body = "Hi"

print(greeting: greeting1)
print(greeting: greeting2)

