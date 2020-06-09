import Foundation
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

let que = DispatchQueue.global(qos: .userInitiated)
que.async {
    print(Thread.isMainThread)
    print("非同期処理")
}
