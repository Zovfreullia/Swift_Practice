//: ## Defining & Calling Functions

import UIKit

// Functions are blocks of reusable code that perform a task.
// Functions can be defined as global functions or methods
// of a type such as a class.
// Methods are just functions of a type in Swift.


// No parameters

func sayHelloWorld() {
    print("Hello World")
}

// With parameter

func sayHelloTo(name: String) {
    print("Hello to \(name)")
}

func say(greeting: String, toName: String) {
    print("\(greeting), \(toName)!")
}

// The first name is not displayed but what is displayed is the
// external parameter name

say("Hey", toName: "Kaira")


// Display the first parameter externally by writing it twice

func speak(greeting greeting: String, toName: String) {
    print("\(greeting), \(toName)!")
}

speak(greeting: "Howdy", toName: "Kaira")

// The common way to write a function name is to call the first
// parameter name in the name of the function

func sayGreeting(greeting: String, toName: String){
    print("\(greeting), \(toName)!")
}
sayGreeting("hey", toName: "Kaira")

// If you want to surpress external parameter names
// write an underscore before the name

func addTwoIntegers(a: Int, _ b: Int) {
    print("\(a + b)")
}
addTwoIntegers(2, 2)

// Functions can optionally return a value

func addThreeInteger(a: Int, _ b: Int, _ c: Int) -> Int {
    return a + b + c
}

let sumOfIntegers = addThreeInteger(1, 2, 3)
print(sumOfIntegers)


// A function can be assigned to a variable or constant using
// function types as the variable constant's types

let integerAdder = addThreeInteger

// Now we can use the constant name to use the function

integerAdder(1,2,3)

// If we want to assign a function that does not take any 
// parameters or returns a value

let helloWorldSayer: () -> () = sayHelloWorld
let helloWorldSayer2: Void -> Void = sayHelloWorld

// A best practice is to put parameters with default values at the
// end of the parameters list.
// Putting parameters with default values at the end of the parameter
// list, esnables those parameters to optionally be excluded when
// calling the function.

func sayHello(hello: String, toName: String = "friend"){
    print("\(hello), \(toName)!")
}
sayHello("hello")

// Change sayGreeting to make greeting optional
// Parameters can be optional values

func sayAWord(word: String?, toName: String = "friend"){
    
    // creating a nil coalescing operator '??' to unwrap
    // and assign word to a local theWord constant
    // if it's not nil
    let theWord = word ?? "Hey"
    // use the local constant in the print statement
    print("\(theWord), \(toName)!")
}
sayAWord(nil)


// When you assign nil to an optional value parameter
// you can avoid inputting parameters in function

func saySomething(something: String? = nil, toName: String = "friend"){
    
    // creating a nil coalescing operator '??' to unwrap
    // and assign word to a local theWord constant
    // if it's not nil
    let theSomething = something ?? "Hey"
    // use the local constant in the print statement
    print("\(theSomething), \(toName)!")
}
saySomething()


// A function parameter can take a variable number of values
// This is called a variadic parameter, which is 'print'
// A function can only have one variadic parameter
// To define a variadic parameter, write three dots afte the parameter type
// Locally, within the function, a variadic parameter's value will be
// available as an array of the type specified for the variadic parameter
func addDoubles(doubles: Double...) -> Double {
    
    // reduce 1st parameter: intial value set to 0
    // reduce 2nd parameter: combining operation +
    return doubles.reduce(0, combine: +)
}

addDoubles(1.3,1.4,1.6,7.8)

