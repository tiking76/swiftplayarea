import Foundation

struct Greeting {
    var to = "Yoshiki" {
        willSet {
            print("willSet: (to: \(self.to), newValue: \(newValue))")
        }

        didSet {
            print("didSet: (to: \(self.to))")
        }
    }
}

var greeting = Greeting()
greeting.to = "tiking"
