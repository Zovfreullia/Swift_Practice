//: [Previous](@previous)

import Foundation

//: ## Variabke & In-Out Parameters

var studentScore = 76.0
let meanScore = 88.0

// To modify variables within a parameter, it must be marked
// with 'var' before the name declaration

// You can use @available in any function or variable declaration to specify
// the availability of that item. Some arguments of @available: introduced,
// deprecated, message, unavailable, obsoleted, and renamed

@available(*, introduced=1.2, deprecated=2.0, message="Use scaleScore2 instead")
func scaleScore(var score: Double, meanScore: Double, recenteredMean: Double = meanScore * 1.1, deviation: Double = 16.0) {
    let zScore = (score - meanScore) / deviation
    score = recenteredMean + zScore * deviation
    print(score)
}

scaleScore(studentScore, meanScore: meanScore)

// Value types such as integers, strings,etc are passed by copy
// even when passing a variable as an input to a variable paramter
// modifying that value within the function body does not change
// the original value

studentScore

//: In-Out

// If you want to modify the original value, use the 'inout' keyword
// instead of the 'var' keyword

// Example of quick-help comment
/**
Mutates passed in score, scaling it based on the raw score, mean score, recentered mean score, and standard deviation.
- parameter score: raw score (**original value will be mutated**)
- parameter meanScore: average score
- parameter recenteredMean: average score to recenter to; defaults to 110% of `meanScore`
- parameter deviation: standard deviation; defaults to 16.0
*/
func scaleScore2(inout score: Double, meanScore: Double, recenteredMean: Double = meanScore * 1.1, deviation: Double = 16.0) {
    
    // guard can be used in a function to assert certain conditions
    // are true before proceeding, and if not, transfer control out
    // of the function
    
    guard score > 0 && meanScore > 0 && recenteredMean > 0 && deviation > 0 else {
        print("All input values must be greater than 0.")
        return
    }
    let zScore = (score - meanScore) / deviation
    score = recenteredMean + zScore * deviation
    print(score)
}

// By prefixing it with ampersand, it is explicity passing it
// by reference instead of copy, and now the student score
// value is changed by the scaleScore2 function

scaleScore2(&studentScore, meanScore: 0)
scaleScore2(&studentScore, meanScore: meanScore)

studentScore

//: [Next](@next)
