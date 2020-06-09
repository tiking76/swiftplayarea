import Foundation

func isEqual() -> Bool {
    return 1 == 1
}

func isEqual(_ x : Int, _ y : Int) -> Bool {
    return x == y
}

print(isEqual())
print(isEqual(1,1))

/*
func 関数名(引数名: 型) -> 戻り値の型 {
    関数呼び出し時に実行される文
}

func 関数名<型引数>(引数名: 型引数) -> 戻り値の型 {
   関数呼び出し時に実行される文
} */


struct Container<Content> {
    let content: Content
}

let stringContainer = Container<String>(content: "abc")

let intContainer = Container(content: 1)

print(stringContainer.content)
print(intContainer.content)



