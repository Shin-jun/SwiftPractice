import Swift

// 제네릭을 사용하기 위해 프로토콜 재정의
protocol Personalize {
    var name: String {get}
    var age: Int {get}
}

struct Person: Personalize{
    var name: String
    var age: Int
}

let star: Person = Person(name: "Star", age: 99)

// 제네릭을 사용하여 패턴 연산자 정의
func ~= <T: Personalize>(pattern: String, value: T) -> Bool {
    return pattern == value.name
}

func ~= <T: Personalize>(pattern: T, value: T) -> Bool {
    return pattern.name == value.name && pattern.age == value.age
}

switch star {
case Person(name: "Star", age: 99):
    print("Same Person")
case "Star": print("Hello Star")
default:
    print("I dont know you are")
}

// 패턴에 사용할 제네릭 함수
func young<T: Personalize>(value: T) -> Bool {
    return value.age < 50
}

switch star {
case young:
    print("\(star.name) is young")
default:
    print("\(star.name) is old")
}

func isNamed<T: Personalize>(_ pattern: String) ->((T) -> Bool) {
    return { (value: T) ->  Bool in value.name == pattern}
}

switch star {
case isNamed("Jung"):
    print("He is Jung")
default:
    print("Another person")
}

prefix operator ==?

prefix func ==? <T: Personalize>(pattern: String)->((T)->Bool) {
    return isNamed(pattern)
}

switch star {
case ==?"Jung": print("He is Jung")
default: print("Another person")
}
