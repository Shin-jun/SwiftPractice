import Swift

let numbers: [Int] = [0, 1, 2, 3, 4, 5]

let mappedNumbers: [Int] = numbers.map{ $0 + 3 }

let evenNumbers: [Int] = mappedNumbers.filter{ (number: Int)-> Bool in return number % 2 == 0
    
}
print(evenNumbers)
