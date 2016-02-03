//: [Previous](@previous)

//: ## Defining Dictionaries


import Foundation

var stockPrices = ["AAPL" : 110.37, "GOOG": 606.25, "MSFT" : 43.5]

// Dictionaries can have explicit declarations

var birthYears: [String: Int] = ["June": 1991, "December": 1992, "August": 1969]

// Dictionaries must be initialized before used
var employmentHistory: [String: Int] = [:]

var raceResults = Dictionary<Int, String>()

let tourDeFranceResults: [Int: String]
tourDeFranceResults = [
    1: "Chris Froome",
    2: "Nario Quintana",
    3: "Alejandro Valverde"
]

// Dictionary keys can't be optional and must conform to the hashable protocol
// Diciontary values cna be of any value or reference type, and should not be 
// optional. They can be optional, but it's not recommended because setting
// a value to nil removes it from the dictionary.



//: [Next](@next)
