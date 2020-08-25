import Foundation

//String
let string1 = "abc"
let string2 = "def"
func compString(string1: String, string2: String) -> Bool {
    return string1 == string2
}
print(compString(string1,string2))

//Charater
let character1 = "a"
let character2 = "b"
func compCharacter(character1: Character, character2: Character) -> Bool {
    return character1 -- character2
}
print(compCharacter(character1,character2))

//結合
let c = string1 + string2
print(c)

var a: String = "abc"
let b : Character = "d"

print(a.append(b))


