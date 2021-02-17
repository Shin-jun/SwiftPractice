import Swift

let numbers: [Int] = [0, 1, 2, 3, 4,]

var doubledNumbers: [Int] = [Int]()
var strings: [String] = [String]()

// for구문 사용
for number in numbers {
    doubledNumbers.append(number*2)
    strings.append("\(number)")
}

print(doubledNumbers)
print(strings)


// map 메서드 사용
doubledNumbers = numbers.map({(number: Int) -> Int in return number*2
})

// 매개변수 및 반환 타입 생략
doubledNumbers = numbers.map({return $0 * 2})
// 반환 키워드 생략
doubledNumbers = numbers.map({ $0 * 2})

// 후행 클로저 사용
doubledNumbers = numbers.map{ $0 * 2}

strings = numbers.map({(number: Int) -> String in return "\(number)"
})
print(doubledNumbers)
print(strings)



