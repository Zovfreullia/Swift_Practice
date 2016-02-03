//: [Previous](@previous)

import Foundation

//: ## Optional Chaining

// Optional chaining, enables accessing properties and calling methods or subscripts of
// optional properties and methods or subscripts.

let hank = Person(firstName: "Hank")

let mike = Person(firstName: "Mike")

let greg = Person(firstName: "Greg")

let dora = Person (firstName: "Dora")

let kaira = Person(firstName: "Kaira")

let may = Person(firstName: "May")

let marcia = Person(firstName: "Marcia", lastName: "Brady")

marcia.birthday = "8/5/1956"

mike.children = [greg, marcia]

hank.children = [mike]

may.birthday = "06/11/2020"
kaira.children = [may]
//dora.children = [kaira]


// If we want to print our Marcia's birthday, we could use optional binding
// to unwrap all the optionals.

// First, we create a Hank's Children local constant equal to Hank's children 
// optional property

// This is referred to as the pyramid of doom
if let hanksChildren = hank.children {
    if let mike = hanksChildren.first {
        if let mikesChildren = mike.children {
            let marcia = mikesChildren[1]
            
            if let marciasAge = marcia.spelledOutAge() {
                print("\(marcia.name) is \(marciasAge) years old")
            }
        }
    }
}


// Use optionla chaining instead
// If all those values do not retunr nil then print out Marcia's age

if let marciasAge = hank.children?.first?.children?[1].spelledOutAge() {
    print("\(marcia.name) is \(marciasAge) years old")
}

// In optional chain, each optional value is unwrapped using the questoin mark
// suffix. If the value is not nil, then the chain contrinues to the
// the next optional.

// This will return nil unless you uncomment out dora

let age = dora.children?.first?.children?[1].spelledOutAge()

// Value from optional chain will always return an optional


//: [Next](@next)
