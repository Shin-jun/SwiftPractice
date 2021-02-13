import SwiftUI

class Person {
    let name: String
    init(name: String) {
        self.name = name
    }
}

struct Stuff {
    var name: String
    var owner: Person
}

let shin = Person(name: "shin")
let haha = Person(name: "haha")
let macbook = Stuff(name: "macbook Air", owner: shin)
var iMac = Stuff(name: "iMac", owner: shin)
let iPhone = Stuff(name: "iPhone", owner: haha)

let StuffNameKeyPath = \Stuff.name
let ownerKeyPath = \Stuff.owner

// \StuffNameKeyPath와 같은 표현
let ownerNameKeyPath = ownerKeyPath.appending(path: \.name)

// 키 경로와 서브스크립트를 이용해 프로퍼티에 접근하여 값을 가져옵니다.
print(macbook[keyPath: StuffNameKeyPath])
print(iMac[keyPath: StuffNameKeyPath])
print(iPhone[keyPath: StuffNameKeyPath])

// 키 경로와 서브스크립트를 이용해 프로퍼티에 접근하여 값 변경
iMac[keyPath: StuffNameKeyPath] = "iMac Pro"
print(iMac[keyPath: StuffNameKeyPath])

// 상수로 지정한 값은 불가
