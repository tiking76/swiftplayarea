//: A UIKit based Playground for presenting user interface
import PlaygroundSupport
import Dispatch

PlaygroundPage.current.needsIndefiniteExecution = true

class SomeClass {
    let id : Int
    
    init(id : Int) {
        self.id = id
    }
}


do {
    let obj = SomeClass(id: 42)
    let closure = { [unowned obj] () -> Void in
        print("not relece : id => \(obj.id)")
    }
    
    print("local ", terminator: "")
    closure()
    
    
    let que = DispatchQueue.main
    
    que.asyncAfter(deadline: .now() + 1) {
        print("not local ")
        closure()
    }
}
