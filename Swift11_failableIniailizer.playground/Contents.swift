import SwiftUI

class Person {
    let name: String
    var age: Int?
    
    init?(name: String) {
        if name.isEmpty {
            return nil
        }
        self.name = name
    }
    
    init?(name: String, age: Int) {
        if name.isEmpty || age < 0 {
            return nil
        }
        self.name = name
        self.age = age
    }
}

let shin: Person? = Person(name: "shin", age: 25)

if let person: Person = shin {
    print(person.name)
}else {
    print("Person wasn't initialized")
}

let chope: Person? = Person(name: "chope", age: -10)

if let person: Person = chope {
    print(person.name)
}else{
    print("Person wasn't initialized")
}

let jun: Person? = Person(name: "", age: 40)

if let person: Person = jun {
    print(person.name)
}else {
    print("Person wasn't initialized")
}
