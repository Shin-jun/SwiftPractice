import SwiftUI

class LevelClass {
    // 현재 레벨을 저장하는 저장 프로퍼티
    var level: Int = 0 {
        // 프로퍼티 값이 변경되면 호출하는 프로퍼티 감시자
        didSet {
            print("Level \(level)")
        }
    }
    
    // 레벨이 올랐을 떄 호출하는 메서드
    func levelup() {
        print("Level Up!")
        level += 1
    }
    
    // 레벨이 감소했을 때 호출하는 메서드
    func levelDown() {
        print("Level Down!")
        level -= 1
        if level < 0 {
            reset()
        }
    }
    
    // 특정 레벨로 이동할 때 호출하는 메서드
    func jumpLevel(to: Int) {
        print("Jump to \(to)")
        level = to
    }
    
    // 레벨을 초기화할 때 호출하는 메서드
    func reset() {
        print("Reset!")
        level = 0
    }
}


var levelClassInstance: LevelClass = LevelClass()
levelClassInstance.levelup()    // Level Up!
// level 1
levelClassInstance.levelDown()  // Level Down!
// level 0
levelClassInstance.levelDown()  // Level Down!
// level -1
// Reset
// Level 0
levelClassInstance.jumpLevel(to: 3) // Jump to 3!
// Level 3
