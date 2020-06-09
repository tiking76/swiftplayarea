/*

 */


import Foundation

class SomeClass {}

protocol SomeProtocol {
    associatedtype associatedType : SomeClass
}

class SomeSubclass : SomeClass {}

struct ConformedStruct : SomeProtocol {
    typealias AssociatedType = SomeSubclass
}
/*
//associatedTypeの規則(今回ならSomeSubClass型)に則ってないからエラーがでる
struct NonConformStruct : SomeProtocol {
    typealias AssociatedType = Int
}
*/

protocol Container {
    associatedtype Content
}

protocol SomeData {
    associatedtype ValueContainer : Container where
        ValueContainer.Content: Equatable
}


