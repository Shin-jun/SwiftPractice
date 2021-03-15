import Swift

protocol Named {
    var name: String {get}
    
    init(name: String)
}

struct Pet: Named {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}
