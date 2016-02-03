//: [Previous](@previous)

import Foundation

//: ## Deferring Code Execution

// The defer statement defers execution of its body of code until right before
// control flow exits the scope in which it is used.

let allSystemsGo = true

if allSystemsGo {
    
    // Code in defer statement is executed right before exiting the enclosing scope
    // which in this case is the if statement
    
    defer {
        print("Lift Off!")
    }
    for i in (1...10).reverse() {
        print(i, terminator: " ")
    }
}

// Defer statements cannot contain any control transfer statements, such as
// continue, break, or return. Defer statements should be typically be placed
// at the top of a block code.

// If more than one defer statement exists in the same code, then they will
// be executed in the reverse order. Last on, first off.

let readyOnSet = true

if readyOnSet {
    defer {
        print("Action!")
    }
    
    defer {
        print("Camera!")
    }
    
    defer {
        print("Lights!")
    }
    
    print("All quiet on set")
}



//: [Next](@next)
