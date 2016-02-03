//: [Previous](@previous)

//: ## Inspecting and Accessing Arrays

import Foundation

var threePeople = ["Me", "Myself", "I"]

threePeople.count

threePeople.isEmpty

threePeople.contains("Me")

let Kaira = threePeople[2]

let twoPeople1 = threePeople[0..<2].sort()


// reorders the array
let twoPeople2 = threePeople[0..<2].sort(>)

let one = threePeople.first!

let two = threePeople.last!


//: [Next](@next)
