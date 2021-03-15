import Swift

protocol Named {
    var name: String {get}
}

protocol Aged {
    var age: Int {get}
}

struct Person: Named, Aged {
    var name: String
    var age: Int
}

class Car: Named {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class Truck: Car, Aged {
    var age: Int
    
    init(name: String, age: Int) {
        self.age = age
        super.init(name: name)
    }
}
func celebrateBirthday(to celevrator: Named & Aged) {
    print("Happy birthday \(celevrator.name)!! Noew you are \(celevrator.age)")
}

let shin: Person = Person(name: "shin", age: 25)
celebrateBirthday(to: shin)

let myCar: Car = Car(name: "Boong Boong")
