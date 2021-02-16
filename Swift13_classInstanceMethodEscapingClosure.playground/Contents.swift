import Swift

typealias VoidVoidClousre = () -> Void

func functionWithNoEscapingClosure(closure: VoidVoidClousre) {
    closure()
}

func functionWithEscapingClosure(completionHandler: @escaping VoidVoidClousre) -> VoidVoidClousre {
    return completionHandler
}

class SomeClass {
    var x = 10
    
    func runNoescapingClosure() {
        functionWithNoEscapingClosure {
            x = 200
        }
    }
    func runEscapingClosure() -> VoidVoidClousre {
        return functionWithEscapingClosure {
            self.x = 100
        }
    }
}

let instance: SomeClass = SomeClass()
instance.runNoescapingClosure()
print(instance.x)

let returnedClosure: VoidVoidClousre = instance.runEscapingClosure()
returnedClosure()
print(instance.x)
