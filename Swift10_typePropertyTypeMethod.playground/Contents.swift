import SwiftUI

// 시스템 음량은 한 기기에서 유일한 값이어야 합니다
struct SystemVolume {
    // 타입 프로퍼티를 사용하면 언제나 유일한 값이 됩니다.
    static var volume: Int = 5
    
    // 타입 프로퍼티를 제어하기 위해 타입 메서드를 사용합니다.
    static func mute() {
        self.volume = 0
    }
    
}

// 내비게이션 역할은 여러 인스턴스가 수행할 수 있습니다.
class Navigation {
    
    // 내비게이션 인스턴스마다 음량을 따로 설정가능
    var volume: Int = 5
    
    // 길 안내 음성 재생
    func guideWay() {
        // 내비게이션 외 다른 재생원 음소거
        SystemVolume.mute()
    }
    
    // 길 안내 음성 종료
    func finishGuideWa() {
        SystemVolume.volume = self.volume
    }
}

SystemVolume.volume = 10

let myNavi: Navigation = Navigation()

myNavi.guideWay()
print(SystemVolume.volume)

myNavi.finishGuideWa()
print(SystemVolume.volume)
