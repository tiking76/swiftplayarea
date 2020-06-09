
import Foundation

var temporaryData: String?

class SomeClass {

    init() {
        print("Create a temoporary data")
        temporaryData = "a temporary data"
    }


    deinit {
        print("Clean up rhe temporary data")
        //temoporaryData = nil
    }
}

var someClass: SomeClass? = SomeClass()
//temoporaryData

someClass = nil
//temoporaryData


