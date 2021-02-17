import Swift

enum School: Int {
    case elementary = 1, middle, high, university
    
    static subscript(level: Int) -> School? {
        return Self(rawValue: level)
    }
}
let school: School? = School[2]
print(school)
