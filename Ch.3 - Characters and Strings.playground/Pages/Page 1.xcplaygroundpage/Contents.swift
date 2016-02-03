//: # Understanding Unicode


let circle: Character = "\u{61}\u{301}\u{20DD}"
let circle2: Character = "\u{E1}\u{20DD}"

/*:
Both are the same.
Each unicode scalar value, or code point, is a 21 bit number representing a character,
a modifier, or a combination of chracacter and or modifiers. Though both prints the same,
the code point is different for each character.

unicode scalar clusers = 1 character
*/
