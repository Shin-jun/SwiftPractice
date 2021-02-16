import Swift

class Room {
    var number: Int
    
    init(number: Int) {
        self.number = number
    }
}

class Building {
    var name: String
    var room: Room?
    
    init(name: String) {
        self.name = name
    }
}

struct Address {
    var province: String
    var city: String
    var street: String
    var building: Building?
    var detailAddress: String?
}

class Person {
    var name: String
    var address: Address?
    
    init(name: String) {
        self.name = name
    }
}

let shin: Person = Person(name: "shin")

/* 옵셔널 바인딩
var roomNumber: Int? = nil

if let shinAddress: Address = shin.address {
    if let shinBuilding: Building = shinAddress.building {
        if let shinRoom: Room = shinBuilding.room {
            roomNumber = shinRoom.number
        }
    }
}

if let number: Int = roomNumber {
    print(number)
}else {
    print("Can not find room number")
}
*/
// 옵셔널 체이닝
if let roomNumber: Int = shin.address?.building?.room?.number {
    print(roomNumber)
}else {
    print("Can not find room number")
}

shin.address = Address(province: "경기도", city: "고양시", street: "평화로", building: nil, detailAddress: nil)
shin.address?.building = Building(name: "하이")
shin.address?.building?.room = Room(number: 0)
shin.address?.building?.room?.number = 504

print(shin.address?.building?.room?.number)
