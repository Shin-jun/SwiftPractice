import SwiftUI

class Person{
    var height: Float = 0.0
    var weight: Float = 0.0
    
    deinit {
        print("Person 클래스의 인스턴스가 소멸됩니다.")
    }
}

var shin: Person = Person()
shin.height = 123.4
shin.weight = 123.4
