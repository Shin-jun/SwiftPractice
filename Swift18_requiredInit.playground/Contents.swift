import Swift

class Person {
    var name: String
    
    required init() {
        self.name = "Unkown"
    }
}

class Student: Person {
    var major: String = "Unkown"
    
    init(major: String) {
        self.major = major
        super.init()
    }
    
    required init() {
        self.major = "Unknwon"
        super.init()
    }
}

class UniversityStudent: Student {
    var grade: String
    
    init(grade: String) {
        self.grade = grade
        super.init()
    }
    required init() {
        self.grade = "F"
        super.init()
    }
}

let jun: Student = Student()
print(jun.major)

let shin: Student = Student(major: "Swift")
print(shin.major)

