//: [Previous](@previous)

import Foundation

//: ## Returning Functions

// Functions can return functions, and a function can be the return type

func sayHelloWord() {
    print("Hello World")
}

/** getHelloWorldSayer will return a function that takes no parmeters
 and does not, itself, return a value. 
*/
func getHelloWorldSayer() -> () -> () {
    func sayHelloWord() {
        print("Hello World")
    }
    return sayHelloWord
}

let helloWorldSayer = getHelloWorldSayer()


// In the case of a function parameter or return value, that itself
// takes parameters and/ or returns a value, write the parameters
// and return a value in the same way


func addDoubles(doubles: Double...) -> Double {
    return doubles.reduce(0, combine: +)
}


func getDoubleAdder() -> (Double...) -> Double {
    return addDoubles
}

let doubleAdder = getDoubleAdder()

doubleAdder(6.1, 4.5, 3.2, 5.6, 9.2)

func makeIcecream(cream: String, fruit: String, nuts: String) -> [String] {
    var iceCream: [String] = []
    iceCream.append(cream)
    iceCream.append(fruit)
    iceCream.append(nuts)
    return iceCream
}

func iceCreamMachine() -> (cream: String, fruit: String, nuts: String) -> [String] {
    return makeIcecream
}


let iceCreamMaker = iceCreamMachine()
iceCreamMaker(cream: "vanilla", fruit: "strabwerry", nuts: "almonds")



//: [Next](@next)
