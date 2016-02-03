//: ## Using Arithmetic Operators

//: ### Numeric Literals & Values

4 + 2
4 - 2
4 * 2
4 / 2

1.2 + 3.4
1.2 - 3.4
1.2 * 3.4
1.2 / 3.4

var a = 1
a++
a
a--
a
// return the original value and then decrement the result

var b = 3.14
print(--b)
print(b++)
b
// decrement the original value and return the result

let c = 4.1 + 2
4.1 - 2
4.1 * 2
4.1 / 2

let fourPointOne: Float = 4.1
let d = fourPointOne / 2

let two = 2
let e = 4.1 / Double(two)

10 / 3
let f = 10.0 / 3

var g = 10
g += 4
g -= 4
g *= 4
g /= 4

10 % 3
-10 % 3
10 % -3

// the remainder operator works on floating point numbers too
98 % 10.5


//: ### Overflow

var x: UInt8 = UInt8.max
x &+ 1
//will wrap around from an integer's maximum value to its minimum one


var y: Int8 = Int8.min
y &- 1
// wraps around to its maximum value 127
// the wrap around account for one decrement


var z: UInt8 = 200
z &* 2

// will increment up to its max value 255, so 200 - 255 = 55
// wraps around from max value to minimum = 1 increment
// 1 + 55 = 56, 200 - 56 = 144


//: [Next](@next)
