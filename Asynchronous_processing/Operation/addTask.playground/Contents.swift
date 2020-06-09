import Foundation
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true


class SomeOperation: Operation {
    let number : Int
    init(number : Int) {
        self.number = number
    }
    
    override func main() {
        Thread.sleep(forTimeInterval: 1)
        print(number)
    }
}


let que = OperationQueue()
que.name = "test"
que.maxConcurrentOperationCount = 2
que.qualityOfService = .userInitiated


var operations = [SomeOperation]()

for i in 0 ..< 10 {
    operations.append(SomeOperation(number: i))
}

que.addOperations(operations, waitUntilFinished: false)
print("Operatiopns as added")
