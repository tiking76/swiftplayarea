
import Foundation

struct User {
    let id : Int
    let name : String
    let mailAddress : String?

    init?(json: [String : Any]) {
        guard let id = json["id"] as? Int,
            let name = json["name"] as? String
        else {
            return nil
        }

        self.id = id
        self.name = name
        self.mailAddress = json["email"] as? String
    }
}

let json: [String : Any] = [
    "id" : 123,
    "name" : "Yusei Nishiyama"
]

if let user = User(json: json) {
    print("id: \(user.id) , mame: \(user.name)")
} else {
    print("Invalid JSON")
}
