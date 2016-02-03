//: [Previous](@previous)

//: # Deferring Value Assignment & Handling `nil`


/*:
## Deferring Value Assignment

*/

//: The type must be explicit if not defined at declaration

let name: String
name = "Kaira"

//: Values can be declined in one line separated by commas

var one, two, three: Int
one = 1
two = 2
three = 3

/*:
## Optionals

Optionals are used for variables that are not explicity assigned a value or nil
*/

var maybeAStringError: String
//print(maybeAStringError)

var maybeAString: String?
print(maybeAString)

var maybeAnother: Optional<String>
print(maybeAnother)

/*:
An empty string is different from a nil
*/

maybeAnother = ""
maybeAnother?.isEmpty
maybeAnother == nil
maybeAnother = "I am a string"
print(maybeAnother)

//: An optional is a container, and to access a value, it must be unboxed. Here is a force unwrap:

print(maybeAnother!)

//: Assign a forced unwrapped string to a constant

let definitelyString = maybeAnother!
print(definitelyString)

//: Only if an optional has a value could it then be unwrapped

//: [Next](@next)
