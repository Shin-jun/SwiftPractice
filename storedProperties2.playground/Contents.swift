import SwiftUI

//좌표
struct CoordinatePoint{
    var x: Int = 0
    var y: Int = 0  // 저장 프로퍼티
}

// 구조체는 기본적으로 저장 프로퍼티를 매개변수로 갖는 이니셜라이저가 있다
let shinPoint: CoordinatePoint = CoordinatePoint()

let wizplanPoint: CoordinatePoint = CoordinatePoint(x: 10, y: 5)

print("shin's point: \(shinPoint.x), \(shinPoint.y)")

print("wizplan's point: \(wizplanPoint.x), \(wizplanPoint.y)")


class Position {
    var point: CoordinatePoint = CoordinatePoint()
    var name: String = "Unknown"
}

// 초기값을 지정해줬기때문에 사용자 정의 이니셜라이저를 사용하지 않아도 된다.
let shinPosition: Position = Position()

shinPosition.point = shinPoint
shinPosition.name = "shin"


