import SwiftUI

struct Puppy {
    
    var name: String = "멍멍이"
    
    func callAsFunction() {
        print("멍멍")
    }
    
    func callAsFunction(destination: String) {
        print("\(destination)(으)로 달려갑니다")
    }
    
    func callAsFunction(someting: String, times: Int) {
        print("\(someting)(을) \(times)번 반복합니다.")
    }
    
    mutating func callAsFunction(name: String) {
        self.name = name
    }
}

var doggy: Puppy = Puppy()
doggy.callAsFunction()
doggy()
doggy.callAsFunction(destination: "집")
doggy(someting: "재주넘기", times: 3)
doggy(name: "댕댕이")
