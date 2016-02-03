//: [Previous](@previous)

//: ## Accessing, Decomposing, & Nesting Tuples

let httpStatus200 = (200, "OK")

var playerScores: ([Int], firstName: String, lastName: String?) = ([134_000, 128_500, 156_250], "Scott", "Gardner")

let highScore = playerScores.0.maxElement()!

// let name = playerScores.1

// let surname = playerScores.2!

// Prints the scores with name
print("\(playerScores.firstName) achieved a high score \(highScore)")

// Decompose into separate values

let (scores, firstName, lastName) = playerScores

// the reduce function takes two parameters
// the plus operator adds all the values up
// combining function type -- combines values
let averageScore = scores.reduce(0, combine: +) / scores.count

print("\(firstName) received the average score \(averageScore)")

// When decomposing, an underscore can be used for tuple values 
// that are not needed, such as if we want to decompose the http 
// status 200 tuple to get its first value, the integer, but do 
// not care about its second value the string.
let (httpStatus, _) = httpStatus200
print(httpStatus)

// the nested tuples are not decomposed, but can be assigned a 
// name and then individual values accessed by either the numeric 
// index or name, if one was assigned in the original tuple.
var anotherScore = (100, (firstName: "Scott", lastName: "Gardner"))


let (theScore, name) = anotherScore

print(theScore)

//: [Next](@next)
