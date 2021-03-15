import Swift

let string: String = "ABC"

switch string {
case _: print(string)
}

let optionalString: String? = "ABC"

switch optionalString {
case "ABC"?:
    print(optionalString)
case _?:
    print("Has value, but not ABC")
case nil:
    print("nil")
}

let shin = ("shin", 25, "Male")

switch shin {
case ("shin", _, _):
    print("Hello shin!")
case (_, _, _):
    print("Who cares~")
}

for _ in 0..<2 {
    print("Hello")
}
