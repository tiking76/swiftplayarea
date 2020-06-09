/*
クラスはインスタンスそのものを渡す→クラスは参照型なので
構造体はインスタンスのコピーを渡す→構造体は値型なので
*/

import Foundation

struct Temperature {
    var celsius: Double = 0
}

class Country {
    var temperature: Temperature

    init(temperature: Temperature) {
        self.temperature = temperature
    }
}

var temperature = Temperature()

temperature.celsius = 25

let Japan = Country(temperature: temperature)

temperature.celsius = 40

let Egypt = Country(temperature: temperature)

print(Japan.temperature.celsius)
print(Egypt.temperature.celsius)

/*
コピーオンライト
→構造体の不要なコピーを発生させない最適化
*/
var array1 = [1,2,3]
var array2 = array1
array1.append(4)
print(array1)
print(array2)
