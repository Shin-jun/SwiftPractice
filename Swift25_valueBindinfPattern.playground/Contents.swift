import Swift

let shin = ("shin", 26, "male")

switch shin {
    // name, age, gender을 shin의 각각의 요소와 바인딩
case let(name, age, gender) : print ("Name: \(name), Age:\(age), Gender: \(gender)")
}

switch shin {
case(let name, let age, let gender) : print("Name: \(name), Age: \(age), Gender:\(gender)")
}

switch shin {
case (let name, _, let gender) : print("Name: \(name), Gender: \(gender)")
}
