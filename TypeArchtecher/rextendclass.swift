
import Foundation

class Animal {
    var owner: String? {
        didSet {
            guard let owner = owner else { return }
            print("\(owner) was assigned as the owner")
        }
    }
}

class Dog : Animal {}

class Cat : Animal {}

class WildEagle : Animal {}

let dog = Dog()

dog.owner = "Mike"

/*
このコードの問題点
・Animalクラスは抽象的なクラスであるため、本来ならインスタンス化できてしまうのはよくない
・不要なプロパティも継承されるのでそれを防ぎたい
*/

