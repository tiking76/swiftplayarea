/*
associatedtypeはauto型みたいに使える
protocol宣言時には、associatedtypeを使うと型定義を準拠時にかける
*/

import Foundation

protocol SomeProtocol {
    associatedtype Associatedtype

    var value: Associatedtype { get }
    func  someMethod(value: Associatedtype) -> Associatedtype
}

//AssociatedTypeを定義することで要求を満たす
struct someStruct : SomeProtocol {
    typealias AssociatedType = Int
    var value: AssociatedType
    func someMethod(value: AssociatedType) -> AssociatedType {
        return 1
    }
}

//実装からAssociatedtypeが自動的に決定する。
struct someStruct2 : SomeProtocol {
    var value : Int
    func someMethod(value: Int) -> Int {
        return 1
    }
}

//ネスト型AssociatedTypeを定義することで要求を満たす
struct someStruct3 : SomeProtocol {
    struct AssociatedType {}

    var value : AssociatedType
    func someMethod(value: AssociatedType) -> AssociatedType
        return AssociatedType()
}





