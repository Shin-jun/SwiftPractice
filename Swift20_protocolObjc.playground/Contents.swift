import Swift

import Foundation

@objc protocol Moveable {
    func walk()
    @objc optional func fly()
}

// 걷기만 할 수 있는호랑이
class Tiger: NSObject, Moveable {
    func walk() {
        print("Tiger Walks")
    }
}

// 걷고 날 수 있는 새
class Bird: NSObject, Moveable {
    func walk() {
        print("bird walks")
    }
    func fly() {
        print("bird flys")
    }
}

let tiger: Tiger = Tiger()
let bird: Bird = Bird()

tiger.walk()
bird.walk()
bird.fly()

var movableInstance: Moveable = tiger
movableInstance.fly?() // 응답 없음

movableInstance = bird
movableInstance.fly?() // Bird flys


