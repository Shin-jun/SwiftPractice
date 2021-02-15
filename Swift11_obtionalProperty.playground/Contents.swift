import SwiftUI

class Person {
    var name: String
    var age: Int?
    
    init(name: String) {
        self.name = name
    }
}

let shin: Person = Person(name: "shin")
print(shin.name)

print(shin.age)

shin.age = 25
print(shin.age)

shin.name = "jun"
print(shin.name)
