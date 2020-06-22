import Foundation
import PlaygroundSupport

class InBox {
    var value: Int
    
    init(value: Int) {
        self.value = value
    }
}

struct Box {
    var value: Int
    
    init(value: Int) {
        self.value = value
    }
}

var a = InBox(value: 1)
var b = a

var c = Box(value: 1)
var d = c

a.value
b.value

a.value = 2

a.value
b.value

c.value = 2

c.value
d.value
