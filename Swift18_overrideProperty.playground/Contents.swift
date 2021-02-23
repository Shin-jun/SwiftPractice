import Swift

class Person {
    var name: String = ""
    var age: Int = 0
    var koreanAge: Int {
        return self.age+1
    }
    
    var introduction: String {
        return "이름 : \(name). 나이 : \(age)"
    }
}

class Student: Person {
    var grade: String = "F"
    
    override var introduction: String {
        return super.introduction + " " + "학점 : \(self.grade)"
    }
    override var koreanAge: Int {
        get {
            return super.koreanAge
        }
        set {
            self.age = newValue - 1
        }
    }
}

let shin: Person = Person()
shin.name = "shin"
shin.age = 25
// shin.koreanAge = 26
print(shin.introduction)
print(shin.koreanAge)

let jun: Student = Student()
jun.name = "jun"
jun.age = 10
jun.koreanAge = 11
print(jun.introduction)
print(jun.koreanAge)
