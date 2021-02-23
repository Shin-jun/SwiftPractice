import Swift

class Person {
    var name: String = ""
    var age: Int = 0
    
    var introduction: String {
        return "이름: \(name). 나이: \(age)"
    }
    func speak() {
        print("가나다라마바사")
    }
}


class Student: Person {
    var grade: String = "F"
    
    func study() {
        print("Study hard...")
    }
}



let shin: Person = Person()
shin.name = "shin"
shin.age = 25
print(shin.introduction)
shin.speak()

let jun: Student = Student()
jun.name = "jun"
jun.age = 10
jun.grade = "A"
print(jun.introduction)
jun.speak()
jun.study()
