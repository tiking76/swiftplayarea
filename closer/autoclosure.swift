import Foundation

//ここでは二つのBool型の関数を引数にとる関数を定義している。
//


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
    return false
}
func rhs () -> Bool {
    print("rhs()関数が実行されました。")
    return true
}
or(lhs(), rhs())


func or2(_ l: Bool, _ r: Bool) -> Bool {
   if l {
        print("true")
        return true
    } else {
        print(r)
        return r
    }
}
func lhs2 () -> Bool {
    print("lhs2()関数が実行されました。")
    return false
}
func rhs2 () -> Bool {
    print("rhs2()関数が実行されました。")
    return false
}
or2(lhs2(), rhs2())


