import Swift

class Person {
    var name: String = ""
    var age: Int = 0 {
        didSet {
            print("Person age : \(self.age)")
        }
    }
    var koreanAge: Int {
        return self.age + 1
    }
    
    var fullName: String {
        get {
            return self.name
        }
        set {
            self.name = newValue
        }
    }
}
class Student: Person {
    var grade: String = "F"
    
    override var age: Int {
        didSet {
            print("Student age: \(self.age)")
        }
    }
    
    override var koreanAge: Int {
        get {
            return super.koreanAge
        }
        set {
            self.age = newValue - 1
        }
       // didSet { }  오류발생
        
    }
    override var fullName: String {
        didSet {
            print("Full Name : \(self.fullName)")
        }
    }
}

let shin: Person = Person()
shin.name = "shin"
shin.age = 25
shin.fullName = "shin jun"
print(shin.koreanAge)

let jun: Student = Student()
jun.name = "jun"
jun.age = 24
jun.koreanAge = 25
jun.fullName = "han jun"
print(jun.koreanAge)
