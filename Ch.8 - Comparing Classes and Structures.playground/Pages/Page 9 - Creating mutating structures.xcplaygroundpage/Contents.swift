//: [Previous](@previous)

import Foundation

//: ## Creating mutating Structures

struct Counter {
    
    var total = 0
    
    
    // Write mutating before func
    mutating func increment() {
        print("\(++total)")
    }
    
    mutating func reset() {
        self = Counter()
        print(total)
    }
    
}

// Set struct to 'var' and not let
var counter = Counter()
counter.increment()
counter.reset()


//: [Next](@next)
