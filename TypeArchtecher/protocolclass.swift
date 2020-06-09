/*
move()メソッドのポリモーフィズムが実現されている
それぞれのサブクラスで実装せずともsleep()メソッドで利用できる
*/
import Foundation

protocol Ownable {
    var owner: String { get set }
}

protocol Animal {
    func sleep()
    func move()
}

extension Animal {
    func sleep() {
        print("sleeping")
    }
}

struct Dog : Animal, Ownable {
    var owner: String
    func move() {
        print("running")
    }
}


struct WildEagle : Animal {
    func move() {
        print("Flying")
    }
}

let dog = Dog(owner : "Mile")
dog.sleep()

