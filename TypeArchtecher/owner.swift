import Foundation

protocol Ownable {
    var owner: String { get set }
}

struct Dog : Ownable {
    var owner : String {
        didSet {
            print("\(owner) was assigned as the owner")
        }
    }
}

struct Cat : Ownable {
    var owner: String {
        didSet {
            print("\(owner) was assigned as the owner")
        }
    }
}

struct WildEagle {}
let dog = Dog(owner: "Mike")
dog.didSet()
