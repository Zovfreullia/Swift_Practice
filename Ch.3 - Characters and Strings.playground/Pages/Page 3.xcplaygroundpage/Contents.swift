//: [Previous](@previous)

//: # Working with Strings

//: ### Inspecting

let quote: String = "In the end, we only regret the chances we didn't take."

quote.hasPrefix("In the end")
quote.hasSuffix("we didn't take.")
quote.uppercaseString
quote.lowercaseString

quote.characters.count
quote.startIndex
quote.endIndex

//: Index allows us to access individual characters of the string

let string1 = "\u{61}\u{301}\u{20DD}"
let string2 = "\u{E1}\u{20DD}"

string1 == string2

let fisrtCharacter = quote[quote.startIndex]


let secondCharacter = quote[quote.startIndex.successor()]

/*: 
wrong --> let eightCharacter = quote[7]

need to use index type value not int
*/

let fourthCharacter = quote[quote.startIndex.successor().successor().successor()]

let eightIndex = quote.startIndex.advancedBy(8)

let eightCharacter = quote[eightIndex]

/*: 
.endIndex is past the end, so you have to call the predecessor
to print the last element.
*/

let lastCharacter = quote[quote.endIndex.predecessor()]


//: [Next](@next)
