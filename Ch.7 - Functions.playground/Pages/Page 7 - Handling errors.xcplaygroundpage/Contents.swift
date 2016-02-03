//: [Previous](@previous)

import Foundation

//: ## Handling Errors

// Sometimes functions can contain errors. Swift has a preemptive method to 
// handle errors that can be recovered from that.

// Functions that can encounter recoverable errors are referred to as
// throwing functions.

let encounteredErrorA = simulatedErrorDidOccur()
let encounteredErrorB = simulatedErrorDidOccur()

enum Error: ErrorType {
    case A
    case B
}

func performAction() throws {
    guard encounteredErrorA == false else {
        throw Error.A
    }
    
    print("Action completed succesfully!")
}


do {
    try performAction()
    print("No error occured")
} catch {
    
}


//: [Next](@next)
