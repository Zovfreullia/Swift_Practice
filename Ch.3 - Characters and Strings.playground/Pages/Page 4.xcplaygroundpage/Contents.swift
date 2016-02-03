//: [Previous](@previous)

//: ### Modifying

var quote: String = "In the end, we only regret the chances we didn't take."

var dog: String = "DOG"

/*:
.endIndex.predecessor() inserts character before the last 
character and .endIndex inserts character as the last 
character
*/

dog.insert("H", atIndex: dog.endIndex.predecessor())
dog.insert("A", atIndex: dog.endIndex)

let last = dog.removeAtIndex(dog.endIndex.predecessor())

quote.insert("!", atIndex: quote.endIndex.predecessor())

let period = quote.removeAtIndex(quote.endIndex.predecessor())

print(quote)

//: ### Range

let aRange = 0..<3

//: Your start index 41 spaces to the left starting from the end
let startIndex = quote.endIndex.advancedBy(-42)

//: The range is from start index to the end of quote
let range = startIndex..<quote.endIndex


let replacementString = "it's not the years in your life that count. It's the life in your years. -- Abraham Lincoln"


quote.replaceRange(range, with: replacementString)



//: [Next](@next)
