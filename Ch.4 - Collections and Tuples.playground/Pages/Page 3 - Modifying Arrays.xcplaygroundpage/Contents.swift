//: [Previous](@previous)

//: ## Modifying Arrays

import Foundation

var turnstileCounts = Array(count: 20, repeatedValue: 0)

var threePeople = ["Me", "Myself", "I"]

turnstileCounts[2] = 5

turnstileCounts[0] += 10

var fourPeople = threePeople

fourPeople.append("Swchoop")

let test = fourPeople.removeLast()

fourPeople.insert(test, atIndex: 0)

var allPeople = fourPeople + ["Hey", "Hi"]

allPeople += [" Do", "The", "Doo"]

print(allPeople)


allPeople.removeRange(4...5)

allPeople.sortInPlace()

print(allPeople)





//: [Next](@next)
