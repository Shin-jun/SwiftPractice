import Swift

var customersInLine: [String] = ["shin", "haha", "hello", "banga"]
print(customersInLine.count)

let customerProvider: () -> String = {
    return customersInLine.removeFirst()
}
print(customersInLine.count)

print("Now serving \(customerProvider())!")
print(customersInLine.count)
