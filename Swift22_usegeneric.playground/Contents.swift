import Swift

func swapTwoValues<T>(_ a: inout T, _ b: inout T) {
    let temporaryA: T = a
    a = b
    b = temporaryA
}
var numberOne: Int = 5
var numberTwo: Int = 10

swapTwoValues(&numberOne, &numberTwo)
print("\(numberOne), \(numberTwo)")


var stringOne: String = "One"
var stringTwo: String = "Two"
swap(&stringOne, &stringTwo)
print("\(stringOne), \(stringTwo)")
