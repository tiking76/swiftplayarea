
import Foundation
import Dispatch

class Temperature {
    var celsius: Double = 0
}

let temperature = Temperature()
temperature.celsius = 25

let dispatchQueue = DispatchQueue.global(qos: .default)

dispatchQueue.async {
    temperature.celsius += 1
    print("a: \(temperature.celsius)")

}

temperature.celsius += 1
print("b: \(temperature.celsius)")
