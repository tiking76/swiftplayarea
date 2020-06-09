//set Task

import Foundation

class SomeOperation : Operation {
    let number : Int
    init(number : Int) {
        self.number = number
    }

    override func main() {
        Thread.sleep(forTimeInterval: 1)
        print(number)
    }
}

let a = SomeOperation(number: 40)


//Generate queue

let que = OperationQueue()


