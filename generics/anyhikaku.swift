import Foundation

func identityWithGenericValue<T>(_ argment: T) -> T {
    return argment
}

let genecInt = identityWithGenericValue(1)
let genecString = identityWithGenericValue("abc")

func identityWithAnyValue(_ argment: Any) -> Any{
    return argment
}

let anyInt = identityWithAnyValue(1)
let anyString = identityWithAnyValue("abc")

if let int = anyInt as? Int {
    print(int)
}else {
    print("miss")
}



