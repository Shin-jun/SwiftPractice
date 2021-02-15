import SwiftUI

struct Area {
    var squareMeter: Double
    
    init() {
        squareMeter = 0.0 // squareMeter의 초기값 할당
    }
    // 프로퍼티를 정의할때 기본값을 할당하는 방법
    // var squareMeter: Double = 0.0
}

let room: Area = Area()
print(room.squareMeter)

