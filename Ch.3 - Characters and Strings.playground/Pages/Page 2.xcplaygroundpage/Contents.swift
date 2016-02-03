//: [Previous](@previous)

//: # Working with Strings

import Foundation

let quote = "hi"
var newQuote = quote
newQuote = "Hey hey hey"
print(quote)

/*:
The original quote is unchanged because strings are passed by copy
through assignment.
*/

let shape = "circle"
let radius = 5.0
let area = M_PI * radius * radius
print("The area of a \(shape) is \(area) and the radius is \(radius)")
print(String(format:"The area of a %@ is %.0f and the radius is %.2f", shape, area, radius))

/*
%.0f rounds a floating number to a whole number.
%.2f rounds a floating number to two decimal plaes.
*/


//: [Next](@next)
