import Foundation

enum ValidationError : Error {
    case empty
    case tooShort
    case numericOnly
    case illegalCharacters(String)
}

enum SomeError : Error {
    case causedBysomething
}

func tryMain(){
    let validationError : ValidationError = .numericOnly

    func throwErrorIfNumericOnly(_ validationError: ValidationError) throws {
        if case .numericOnly = validationError {
            throw validationError
        }
    }


    do {
        try throwErrorIfNumericOnly(validationError)
    } catch ValidationError.numericOnly {
        print("error numericOnly")
    } catch {
        print(error.localizedDescription)
    }
}


func tryMain2() {
    let validationError1 : ValidationError = .empty
    let validationError2 : ValidationError = .numericOnly

    func throwErrorIfNumericOnly(_ validationError: ValidationError) throws {
        if case .numericOnly = validationError {
            print("error is ")
            throw validationError
        } else {
            print("引数は,numericOnlyではなかった")
        }
    }

    try! throwErrorIfNumericOnly(validationError1)
    try? throwErrorIfNumericOnly(validationError2)
}

func resultMain() {
    func getMessage(_ error : SomeError?) -> Result<String, SomeError> {
        guard let error = error else { return .success("成功") }
        return .failure(error)
    }
    
    switch getMessage(nil) {
    case .success(let message):
        print(message)
    case .failure(let error):
        print(error)
    }
    
    switch getMessage(SomeError.causedBysomething) {
    case .success(let message):
        print(message)
    case .failure(let error):
        print(error)
    }
}

tryMain()
tryMain2()
resultMain()






