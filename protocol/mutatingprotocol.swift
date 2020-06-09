import Foundation

/*
値型のインスタンスを変更することができるメソッドをプロトコルに定義したい
→プロトコル側の定義にmutatingの定義が必要
参照型のインスタンスには宣言の必要がない
*/

protocol SomeProtocol {
    mutating func someMutatingMethod()
    func someMethod()
}

struct SomeStruct {
    var number : Int

    mutating func someMutatingMethod() -> Void {
        number = 1
    }

    //エラーになる
    func someMethod() {
        number = 1
    }
}


class  SomeClass : SomeProtocol{
    var number = 0

    func someMutatingMethod() -> Void {
        number = 1
    }

    func someMethod() {
        number = 1
    }
}
