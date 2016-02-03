//: [Previous](@previous)

import Foundation

//: ## Using If-Case & For-Case


// Swift includes the If-Case and For-Case statements that enable using a single
// case from a switch statement standalone with all its pattern matching
// capabilities without needing to implement a whole switch statement.

enum Number {
    case Integer(Int)
    case FloatingPoint(Double)
    case Text(String)
}

let someNumber = Number.FloatingPoint(12.34)
let someNumber2 = Number.FloatingPoint(12.2)

// If we only cared if our someValue constant was a FloatingPoint value, we could pare
// down the switch statement a bit by adding a default case and removing the
// other two cases.

switch someNumber {
    //case .Integer(let n):
    //    break
case .FloatingPoint(let n):
    print(n)
    //case .Text(let n):
    //    break
default:
    break
}

// Use if case to check the value of the enum Number with
// property called FloatingPoint, and where clause to
// further add constraint


//: If-Case

if case .FloatingPoint(let number) = someNumber2 where number > 12.0 {
    print(number)
}

// For an array of Number enumeration values, we could wrap a switch
// statement in a for loop. If all we care about was the integer,
// we can default: break and ignore other values.

let someAges: [Number] = [.Integer(19), .FloatingPoint(20.99), .Text("Twenty-something")]

for age in someAges {
    switch age {
    case .Integer(let a):
        print(a)
    default:
        break
    }
}

//: For-Case

// For-case can be used instead

for case .Integer(let age) in someAges where age < 21 {
    print(age)
}

//: Optional patter matching

// Optionals with for-case and if-case

let currentVolume: Int? = 9

// Optional binding
if let volume = currentVolume where volume < 16 {
    print("Turn it up!")
}

// Optional pattern matching
// It conditionall unwraps the currentVolume optional before
// assigning it to volume if currentVolume is not nil.

if case let volume? = currentVolume where volume < 16 {
    print("Turn it up!")
}

let optionalNumbers: [Number?] = [nil, .FloatingPoint(50.0), nil, .Integer(37), nil, .Integer(45)]

// Use optional patter matching for an array of optional types
// Note that because optionalNumbers is an array of optional values,
// we need to write the question mark suffix on the matching pattern,
// which conditionally unwraps the optional if it's not nil.

for case .Integer(let number)? in optionalNumbers where number < 40 {
    print(number)
}

//: [Next](@next)
