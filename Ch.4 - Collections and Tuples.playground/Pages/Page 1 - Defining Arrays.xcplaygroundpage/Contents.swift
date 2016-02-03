//: ## Defining Arrays

import UIKit


// Initializing
var threeStoogers = ["Moe", "Larry", "Curly"]


var inningScores: [Int]
inningScores = []

var testScores = [Double]()

var quizScores: Array<Double> = []

var quarterlyScores = Array<Double>()

var turnstileCounts = Array(count: 20, repeatedValue: 0)

var snowBoarderScores = [Double](count: 4, repeatedValue: 10)

var arrayOfAny: [Any] = [1, 2.0, "three"]

var someString = "he"
var nilString: String? = nil


// If you inset an optional inside an array
// the rest of the array will become optional
let arrayOfStrings = [someString, nilString]

var optionalArrayOfStrings: [String]?

var optionalArrayofOptionalStrings: [String?]?







