//: [Previous](@previous)

//: ## Inspecting & Accessing Dictionaries


import Foundation

var stockPrices = ["AAPL" : 110.37, "GOOG": 606.25, "MSFT" : 43.5]

var ages = Dictionary<String, Int>()

// Dictionary properties
stockPrices.count
ages.isEmpty

// Get all the stock names
Array(stockPrices.keys)

// Get all the stock values
Array(stockPrices.values)

// Access values
let appleStockPrice = stockPrices["AAPL"]!

// the result of appleStockPrice is an optional because
// a value may not exist for a given key. We can force
// unwrap a value if we know the value exists for the key


//: [Next](@next)
