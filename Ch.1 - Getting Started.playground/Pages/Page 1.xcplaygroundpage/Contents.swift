import UIKit

//: # Print Line

var str = "Hey"
var hello = "Hello"; var playground = "playground"


/// Sin Graph
for i in 0..<64 {
    var point = sin(Double(i) * 100)
}

print(str)

/*:
This is called a variadic parameter because it
takes one or more values in a comma separated
list

Terminator cuts out the new print line:

`print(str, hello, playground, terminator: "")`
*/

/*:
Separator creates a separation between paramters 
in print

`print(str, hello, playground, separator: "_")`
`print("...")`

*/

print("\(hello) string")
print("2 + 2 = \(2+2)")


//: [Next](@next)
