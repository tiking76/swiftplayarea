import Foundation
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true


func runTask(handleer: @escaping (Int) -> Void) {
    let globalQueue = DispatchQueue.global()
    globalQueue.async {
        let result = Array(0...1000000).reduce(0, +)

        let mainQueue = DispatchQueue.main
        mainQueue.async {
            handleer(result)
        }
    }
}

runTask() { result in
    print(result)
}



