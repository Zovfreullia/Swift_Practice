//: [Previous](@previous)

//: ## Nesting Arrays


import Foundation

var threePeople = ["Me", "Myself", "I"]

// an array of array of strings

var groupsOfThree = [
    threePeople,
    ["Natalia", "Nancy", "Nadia"],
    ["Luis", "Leela", "Louie"],
    ["Jane", "Jack", "John"]
]

let threeMusketeers = threePeople[2]

let jane = groupsOfThree[3][0]

// var someItem = arr[row][column]

groupsOfThree[3][2] = "Janet"

// Multidimenstional arrays can be flattened into a
// a single array using .flatMap

print(groupsOfThree.flatMap({ $0 }))

// .flatMap takes a closure argument, encolsed in curly
// braces that can be used to transform each element
// of the array. But since we are not transforming
// we then write $0 which represents each item found
// in groupsOfThree array, and as a result prints out
// each item in a single array

//: [Next](@next)
