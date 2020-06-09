import Foundation

class Excutor {
    let int = 0
    var lastExcutorClosure: (() -> Void)? = nil

    func excute(_ closure: @escaping () -> Void) {
        closure()
        lastExcutorClosure = closure
    }

    func excutePrintInt() {
        excute {
            //selfのキャプチャを行っている
            print(self.int)
        }
    }
}

