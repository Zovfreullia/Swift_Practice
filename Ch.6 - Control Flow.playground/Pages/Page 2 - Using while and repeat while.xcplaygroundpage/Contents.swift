//: [Previous](@previous)

//: ## Using While & Repeat-While

//: ### While

import Foundation

// The while loop evaluates the condition and keeps running
// until it is false

// Simulates a dice roll
// If both do not come out as # 1 then it will print a dot
// If it equals to 1 then it will print snake eyes
// The dot shows how many times it tried until both dice roll are 1

while arc4random_uniform(6) + 1 != 1 && arc4random_uniform(6) + 1 != 1 {
    print(".", terminator: "")
}
print("Snake Eyes")

//: ### Repeat-While

// A repeat while loop will always execute the code once

repeat {
    print(".", terminator: "")
} while arc4random_uniform(6) + 1 != 1 && arc4random_uniform(6) + 1 != 1
print("Snake Eyes")


//: [Next](@next)
