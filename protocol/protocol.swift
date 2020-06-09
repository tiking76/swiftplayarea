/*
プロトコルはインターフェース
プロトコルは変数、定数、引数の型としても使える
プロトコルのプロパティは常にvarキーワードで宣言して、
{}内にゲッタとセッタの有無によってそれぞれgetキーワードとsetキーワードを追加してあげる。
*/

protocol SomeProtocol1 {
    var variable1: Int { get }
}

protocol SomeProtocol2 {
    var variable2: Int { get }
}

struct SomeStruct : SomeProtocol1, SomeProtocol2{
    var variable1: Int
    var variable2: Int
}

func someFunction(x: SomeProtocol1 & SomeProtocol2) -> Int {
    let sum: Int
    sum = x.variable1 + x.variable2
    return sum
}

let a = SomeStruct(variable1: 1, variable2: 2)
let b = someFunction(x:a)
print(b)






