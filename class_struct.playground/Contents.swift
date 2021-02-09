import SwiftUI

struct BasicInformation {
    let name: String
    var age: Int
}

var shinInfo: BasicInformation = BasicInformation(name: "shin", age: 25)

//shinInfo의 값을 복사하여 할당합니다.
var friendInfo: BasicInformation = shinInfo

print("shin's age: \(shinInfo.age)")
print("friend's age: \(friendInfo.age)")

friendInfo.age = 999

print("shin's age: \(shinInfo.age)")
print("friend's age: \(friendInfo.age)")

//구조체

class Person {
    var height: Float = 0.0
    var weight: Float = 0.0
}

var shin: Person = Person()
var friend: Person = shin //shin의 참조를 할당

print("shin's height: \(shin.height)")
print("friend's height: \(friend.height)")

friend.height = 180.2

print("shin's height: \(shin.height)")
print("friend's height: \(friend.height)")

func changeBasicInfo(_ info: BasicInformation) {
    var copiedInfo: BasicInformation = info
    copiedInfo.age = 1
}
func changePersonInfo(_ info: Person){
    info.height = 150.5
}

changeBasicInfo(shinInfo)
print("shin's age: \(shinInfo.age)")

changePersonInfo(shin)
print("shin's height: \(shin.height)")
