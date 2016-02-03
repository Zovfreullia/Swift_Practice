//: [Previous](@previous)

//: ## Optionla Binding

// Optional Binding allows an optional value to be checked to see if it has a value
// If it is not nil, it is unwrapped and assigned to a temporary value

var firstName: String? = "Betty"

// If the optional firstName is not nil, unwrap and assign its value to a local
// constant, firstName

if let firstName = firstName {
    print("Hello \(firstName)")
} else {
    print("Welcome Guest")
}

var lastName: String? = "Vincent"

// Multiple optional bindings can be chained together in an if let statement

if let firstName = firstName, lastName = lastName {
    print("Hello my name is \(firstName) \(lastName)")
} else {
    print("I'm a guest")
}

// The local constant created by an if statement is immutable
// If you need to modify a local constant, use the if var statement

if var firstName = firstName, lastName = lastName {
    firstName = firstName.uppercaseString
    lastName = lastName.uppercaseString
    print("Hello my name is \(firstName) \(lastName)")
} else {
    print("I'm a guest")
}

//: [Next](@next)
