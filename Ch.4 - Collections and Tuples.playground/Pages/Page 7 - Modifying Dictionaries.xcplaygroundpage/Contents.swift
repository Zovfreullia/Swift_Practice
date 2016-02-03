 //: [Previous](@previous)

//: ## Modifying Dictionaries


import Foundation

var stockPrices = ["AAPL" : 110.37, "GOOG": 606.25, "MSFT" : 43.5]

stockPrices["AMZN"] = 504.72

stockPrices["APPL"] = 114.45

stockPrices["AMZN"] = nil

print(stockPrices)

// Dictionary has remove all

stockPrices.removeAll()

stockPrices["DMI"] = 17.25

// You can also grab a value from removeValueForKey

let dunderMifflinStockPrice = stockPrices.removeValueForKey("DMI")

// it retuns an optional beacause there may not be
// a value for the key

print(stockPrices)

//: [Next](@next)
