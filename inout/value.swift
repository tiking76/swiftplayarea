func increment(array : [Int]) -> [Int] {
    array = array.map { $0 + 1 }
    return array
}

var oldArray = [0,1,2]
print(oldArray)
var newArray = increment(array: oldArray)
print(oldArray)
print(newArray)

