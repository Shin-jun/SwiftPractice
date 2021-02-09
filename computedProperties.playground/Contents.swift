import SwiftUI

struct CoordinatePoint {
    var x: Int  // 저장 프로퍼티
    var y: Int  // 저장 프로퍼티

    // 대칭 좌표
    var oppositePoint: CoordinatePoint {    // 연산 프로퍼티
        // 접근자
        get {
            return CoordinatePoint(x: -x, y: -y)
        }
        // 설정자
        set(opposite){
            x = -opposite.x
            y = -opposite.y
        }
    }
}

var shinPositon: CoordinatePoint = CoordinatePoint(x:10, y:20)

// 현재 좌표
print(shinPositon)

// 대칭 좌표
print(shinPositon.oppositePoint)

// 대칭 좌표를 (15, 10)으로 설정
shinPositon.oppositePoint = CoordinatePoint(x: 15, y: 10)

// 현재 좌표
print(shinPositon)

