//: [Previous](@previous)

//: ## Using Bitwise Operators


// To write a binary number in swift, prefix it with "0b" 
// The 0's between the b and 1 are padding

let ten = 0b00001010

let one = 0b1


// left shift operator, padding zero bits to the right
let two = one << 1  // 00010


let four = one << 2 // 00100

let sixteen = one << 4 // 10000

let eight = sixteen >> 1 // 01000

let zero: UInt8 = 0b00000000


// inverts all the bits
~zero

let a = 0b111100
let b = 0b001111


// the ampersand comapres the left and right values and reutrns a new number, whose bits are one where both bits are one, and zero otherwise
let g = 0b001100

a & b

// the or operator compares the left and right values, and returns a new number whose bits are one if either of the bits are one.
let f = 0b111111
a | b



let option1 = 0b0001
let option2 = 0b0010
let option3 = 0b0100



option1 | option2 | option3
// option one sets the one bit, option two sets the two bit, and option three sets the four bit.

let c = 0b1001
let d = 0b0101

c ^ d // 1100

let x = 0b1100

// the carrot operator compares the left and right values, and returns a new number whose bits are zero if either of the bits are zero.

// Bitwise oeprators enable manipulating raw binary databits within a datastructure. Bitwise Operators are used when working with option bitmasks.



//: [Next](@next)

