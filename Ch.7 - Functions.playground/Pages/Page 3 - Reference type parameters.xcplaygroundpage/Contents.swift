//: [Previous](@previous)

import Foundation

//: ## Reference Type Parameters

let person = Person(firstName: "Bob")

person.firstName = "Fred"

func reverseFirstNameOfPerson(person: Person) {
    let reversed = String(person.firstName.characters.reverse())
    person.firstName = reversed.capitalizedString
}

// When a reference type is passed to a function, that function
// can actually change that reference type instance's values.

reverseFirstNameOfPerson(person)
person.firstName

//: Function Parameters

// Functions can take other funcions are parameters

func addTwoIntegers(a: Int, _ b: Int) -> Int {
    return a + b
}

func performIntegerOperation(operation: (Int, Int) -> Int, a: Int, b: Int )-> Int {
    return operation(a,b)
}

// When passing a function as a parameter, just write the name
// of the function and do not include the paranthesized
// parameter list. Writing the parantheses will execute
// the function, we just want to pass the function.

performIntegerOperation(addTwoIntegers, a: 2, b: 2)

// If a function parameter takes no parameters, and/or does not
// return a value itself, jsut write empty in parantheses.


//: [Next](@next)
