import Swift

let (a) : Int = 2
print(a)

let(x, y) : (Int, Int) = (1, 2)
print(x)
print(y)

let name: String = "Shin"
let age: Int = 25
let gender: String? = "Male"

switch (name, age, gender) {
case ("Shin", _, _):
    print("Hello Shin")
case (_, _, "Male"?):
    print("Who are you man?")
default:
    print("I dont know who you are")
}

let points: [(Int, Int)] = [(0, 0), (1, 0), (1, 1), (2, 0), (2, 1)]

for (x, _) in points {
    print(x)
}
