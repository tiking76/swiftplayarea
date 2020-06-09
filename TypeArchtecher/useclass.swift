/*
参照を共有する
→ある箇所での操作を他の箇所へ共有させたいケースに有効

*/
import Foundation

protocol Target {
    var identifire: String { get set }
    var count: Int { get set }
    mutating func action()
}

extension Target {
    mutating func action() {
        count += 1
        print("id: \(identifire), count: \(count)")
    }
}

struct ValueTypeTarget : Target {
    var identifire = "Value Type"
    var count = 0

    init() {
        count = 0
    }
}

class ReferenceTypeTarget : Target {
    var identifire = "Reference Type"
    var count = 0

    init() {
        count = 0
    }
}

struct Timer {
    var target : Target

    mutating func start() {
        for _ in 0..<5 {
            target.action()
        }
    }
}

//構造体のターゲットを登録してタイマーを実行
let valueTypeTarget: Target = ValueTypeTarget()
var timer1 = Timer(target: valueTypeTarget)
timer1.start()
print(valueTypeTarget.count)


//クラスのターゲットを登録してタイマーを実行
let referenceTypeTarget = ReferenceTypeTarget()
var timer2 = Timer(target: referenceTypeTarget)
timer2.start()
print(referenceTypeTarget.count)
