import Foundation

//closer関数の定義
var closere : (String) -> Int

let argments = "acd"
var count : Int

//最初の定義
closere = { (string: String) -> Int in
    string.count
}

//出力
count = closere(argments)
print(count)

//引数と戻り値の記述を省略
closere = {string in
    string.count * 2
}

//出力
count = closere(argments)
print(count)

/*
//型が未定であるためエラーがおこる
let hoge = {string in
    string.count
    }

print(hoge(argments))
*/

var returnStr : (String) -> String

returnStr = {
    $0+$0
}

print(returnStr("Hello"))


let greeting: (String) -> String

do {
    let symbol = "!"
    greeting = { user in
        return "Hello, \(user)\(symbol)"
    }
}

print(greeting("Yoshiki"))


let counter : () -> Int

do {
    var count = 0
    counter = {
        count += 1
        return count
    }
}

print(counter())
print(counter())



var queue = [() -> Void]()
func enqueue(operation: @escaping () -> Void) {
    queue.append(operation)
}
enqueue{ print("abc") }
enqueue{ print("bcd") }
queue.forEach{ $0() }


func excuteTwice(operation: () -> Void) {
    operation()
    operation()
}
excuteTwice{ print("abs") }



func or(_ lhs: Bool, _ rhs: @autoclosure () -> Bool) -> Bool {
    if lhs {
        print("true")
        return true
    } else {
        let rhs = rhs()
        print(rhs)
        return rhs
    }
}

func lhs () -> Bool {
    print("lhs()関数が実行されました。")
    return true
}

func rhs () -> Bool {
    print("rhs()関数が実行されました。")
    return false
}

or(lhs(), rhs())

func execute(parameter: Int, handler: (String) -> Void) {
    handler("parameter is \(parameter)")
}

execute(parameter: 1, handler: { string in
    print(string)
})

execute(parameter: 2) { string in
    print(string)
}

func excute2(handler: (String) -> Void) {
    handler("excuted")
}

excute2 { string in
    print(string)
}


func double(_ x: Int) -> Int {
    return x * 2
}

let twice = double

let array1 = [1,2,3]

let doubledArray1 = array1.map{ $0 * 2 }
print(doubledArray1)

let array2 = [1,2,3]
let doubledArray2 = array2.map(double)
print(doubledArray2)


var board : [[Int]] = {
    let sideLength = 3
    let row = Array(repeating: 1, count: sideLength)
    let board = Array(repeating: row, count: sideLength)
    return board
}()

print(board)



