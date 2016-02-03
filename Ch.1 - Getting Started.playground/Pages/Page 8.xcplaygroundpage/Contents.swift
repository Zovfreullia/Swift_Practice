//: [Previous](@previous)

/*: 
# Using Dot Notation

Global function types are called methods

*/

// Initialize functions
var foo = Foo()
var bar = Bar()
var bas = Bas()

print(bas.address)
bas.address = "changed it"

bas.sayHi()

bas.getAddress("37 Beach Avenue")

foo.bar.bas.sayHi()

foo
    .bar
    .bas
    .sayHi()

//: [Next](@next)
