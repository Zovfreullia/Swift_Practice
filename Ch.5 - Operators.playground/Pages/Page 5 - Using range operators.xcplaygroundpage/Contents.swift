//: [Previous](@previous)

//: ## Using range operators


// Two types of range operators
// * half-open: used to define a range from the start value to but not including the end value
// * close: includes both start and end values

// half-open
let rangeA = 0..<10

// close
let rangeB = 0...10

// equals
0...10 == 0..<11


//: ### Strings


var palindrome = "A man a plan a canal Panama"
palindrome.isPalindrome()

let startIndex = palindrome.startIndex.advancedBy(13)

let endIndex = palindrome.endIndex.advancedBy(-8)

// advanced by-- start and end ranges

let replacement = "a cat a ham a yak a yam a hat a canal"

let range = startIndex...endIndex

palindrome.replaceRange(range, with: replacement)
palindrome.isPalindrome()


//: ### Arrays

var fibNumbers = [1,3,6,10,15,21]

let rangeToReplace = fibNumbers.startIndex.successor()..<fibNumbers.endIndex.predecessor()

let replace = [1,2,3,4,5,8,13]

fibNumbers.replaceRange(rangeToReplace, with: replace)










//: [Next](@next)
