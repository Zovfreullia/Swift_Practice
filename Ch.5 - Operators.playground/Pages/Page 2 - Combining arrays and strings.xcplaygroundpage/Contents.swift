//: [Previous](@previous)

//: ## Combining Strings and Arrays

//: ### Strings

var hello = "Hello, "
let world = "world!"

let greeting = hello + world
hello
world


// The += operator can be used to interpolate strings and
// to add string objects inside an existing array

hello += "viewer!"
hello

var apples = ["McIntosh", "Red Delicious"]

apples += ["Granny Smith"]

let oranges = ["Navel", "Valencia", "Moro"]

print(apples)

let applesAndOranges = (apples + oranges).sort()




let name = "Jaime"
let season = "Fall"

print("Hello, \(name)!" + "\n" + "Are you enjoying the \(season)?")

//: [Next](@next)
