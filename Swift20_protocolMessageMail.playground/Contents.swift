import Swift

// 무언가를 수신받을 수 있는 기능
protocol Receiveable {
    func received(data: Any, from: Sendable)
}
// 무언가를 발신할 수 있는 기능
protocol Sendable {
    var from: Sendable { get }
    var to: Receiveable? { get }
    
    func send(data: Any)
    
    static func isSendableInstance(_ instance: Any) -> Bool
}

// 수신 발신이 가능한 Message 클래스
class Message: Sendable, Receiveable {
    // 발신은 발신 가능한 객체, 즉 Sendable 프로토콜을 준수하는 타입의 인스턴스
    var from: Sendable {
        return self
    }
    
    // 상대방은 수신 가능한 객체, 즉 Receiveable 프로토콜을 준수하는 타입의 인스턴스
    var to: Receiveable?
    
    // 메시지 발신
    func send(data: Any) {
        guard let receiver: Receiveable = self.to else {
            print("Message has no receiver")
            return
        }
        // 수신 가능한 인스턴스의 received 메서드를 호출
        receiver.received(data: data, from: self.from)
    }
    
    // 메시지 수신
    func received(data: Any, from: Sendable) {
        print("Message received \(data) from \(from)")
    }
    
    // class 메서드이므로 상속가능
    class func isSendableInstance(_ instance: Any) -> Bool {
        if let sendaleInstance: Sendable = instance as? Sendable {
            return sendaleInstance.to != nil
        }
        return false
    }
}

// 수신 발신 가능한 mail 클래스
class Mail: Sendable, Receiveable {
    var from: Sendable {
        return self
    }
    var to: Receiveable?
    
    func send(data: Any) {
        guard let receiver: Receiveable = self.to else {
            print("Mail has no receiver")
            return
        }
        receiver.received(data: data, from: self.from)
    }
    
    func received(data: Any, from: Sendable) {
        print("Mail received \(data) from \(from)")
    }
    
    static func isSendableInstance(_ instance: Any) -> Bool {
        if let sendableInstance: Sendable = instance as? Sendable {
            return sendableInstance.to != nil
        }
        return false
    }
}

let myPhoneMessage: Message = Message()
let yourPhoneMessage: Message = Message()

myPhoneMessage.send(data: "Hello")

myPhoneMessage.to = yourPhoneMessage
myPhoneMessage.send(data: "Hello")

let myMail: Mail = Mail()
let yourMail: Mail = Mail()

myMail.send(data: "Hi")

myMail.to = yourMail
myMail.send(data: "Hi")

myMail.to = myPhoneMessage
myMail.send(data: "Bye")
