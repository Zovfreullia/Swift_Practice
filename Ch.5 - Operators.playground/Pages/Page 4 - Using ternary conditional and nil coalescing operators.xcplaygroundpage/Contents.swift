//: [Previous](@previous)

//: ## Using ternary conditional and nil coalescing operators


//: ### Ternary Conditional

let name = "Charlotte"


// if name is empty, return hello, else return hi name
let salutation = name.isEmpty ? "Hello!" : "Hi \(name)!"

name.isEmpty ? print("no name given") : print("name is \(name)")

let birthYear = 2005

let generation = birthYear < 1991 ? "Greatest Generation" :
birthYear < 1965 ? "Baby Boomers" :
birthYear < 1982 ? "X" :
birthYear < 1996 ? "Y" :
"Generation Z"


//: ### Nil Coalescing

// Used to check an optional, and return it unwrapped if it is not nil. 
// Otherwise, it will return the specified default value or evaluate
// an expression that returns a value


let defaultSize = "M"

var selectedSize: String?

let orderSize = selectedSize ?? defaultSize












//: [Next](@next)