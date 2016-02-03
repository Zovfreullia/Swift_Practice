
//: [Previous](@previous)

//: ## Using comparison and logical operators


let a = 4
let b = 2
var c = a // Passed by copy

let x = ThisClass()
let y = ThisClass()
let z = x

x.title
// check if values are equal

a == c
a != b


c = 3
a


x == y
x == z

x === z    // pointing to the same instances
x !== y    // difference instances so not equal

z.title = "Z Title"

x === z // still holds true

x == z
x.title // grabbed z's title


a > b
b < a
a >= c
b <= c

a > b && b < c

x.title
y.title
z.title

x == y || x == z


//: [Next](@next)










