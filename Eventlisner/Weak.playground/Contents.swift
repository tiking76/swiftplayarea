import PlaygroundSupport
import Dispatch

//Playgroundでの非同期実行を持つオプション

PlaygroundPage.current.needsIndefiniteExecution = true

class SomeClass {
    let id : Int
    
    init(id : Int) {
        self.id = id
    }
}



do {
    let object = SomeClass(id: 42)
    let closure = { [weak object] () -> Void in
        if let o = object {
            print("objectはまだ解放されていません: id => \(o.id)")
        } else {
            print("objectは解放されました")
        }
    }
    
    
    print("local: ", terminator: "")
    closure()
    
    
    
    let queue = DispatchQueue.main
    
    
    queue.asyncAfter(deadline: .now() + 1) {
        print("local: ", terminator: "")
        closure()
    }
}
