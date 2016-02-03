//: [Previous](@previous)

//: # Defining Characters

/*:
### Characters
* Each character type represents a single extended grapheme cluster (a sequence of one or more Unicode scalars)
* Single character encolsed in double quotes is still considered a string
* Must either cast or explicitly declare as character
*/

let oneChar: Character = "a"
let twoChar = "b" as Character

//: To use the unicode:

let uWithUmlaut: Character = "\u{75}\u{308}"

let combinedUmlaut: Character = "\u{FC}"

//: http://unicode-table.com
//: [Next](@next)
