//: [Previous](@previous)

//: ## Nesting Dictionaries

var bostonMarathonResults: [Int: [String: String]] = [
    1 : [
        "name": "Desisa",
        "country": "ETH",
        "finishingTime": "2:09:17"
    ]
]


// When accessing nested values, each subscript returns an optional value
// because a value may not exist for the given key.
// When accessing nested values in a dictionary write a ? after a subscript
// to append another subscript onto it, creating a chain.

let firstPlaceName = bostonMarathonResults[1]?["name"]

// This is an example of optional chaining which means, if any step along
// the way a value is nil, it stops processing the expression and 
// just return nil. This still returns an optional.

//: [Next](@next)
