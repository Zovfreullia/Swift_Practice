//: ## Using For & For In


//: ### For

for var i = 1; i < 1024; i *= 2 {
    print(i)
}


//: ### For-In

// half open range

for i in 0..<10 {
    print(i)
}

// i is implicitly declared as a constant

for var i in 1...3 {
    i *= 2
}

// reverse range for loop

for i in (1...3).reverse() {
    print(i)
}

// save memory by not using the sequence value
// use an underscore instead

for _ in 0..<10 {
    print("I eat shorts")
}

//: ### Stridables

// Swift includes two stride mehtods that can be 
// called on stridable values such as an integer.
// * To iterate from that value to
// * To iterate through an end value by a specified incrementor
// Stride from 3 to 30 but skip 30, increment by 3

for i in 3.stride(to: 30, by: 3) {
    print(i)
}

// Stride can work with reverse sequences
// Stride from 10 to 1 by -1 increment

for i in 10.stride(through: 1, by: -1){
    print(i, terminator: " ")
}


//: ### Iterating through Dictionaries

// Using for-in with a dictionary returns a tuple that can be
// decomposed into keys and values for use in body.

let people = ["\nman": "👦", "woman": "👩", "girl": "👧", "boy": "👦"]


// iterate through people dictionary and separate them
// into k and v values

for (k,v) in people {
    print("\(k) : \(v)")
}

//: ### Iterating through Sets

// for-in works with sets as well
// order is unspecified

let letters: Set = ["a", "b", "c"]

for v in letters {
    print(v)
}

//: ### Enumerate method in collections

// Decompose and returns and index and value
//     0: 'S'
//     1: 'w'
//     2: 'i'
//     3: 'f'
//     4: 't'

for (i, c) in "SWIFT".characters.enumerate() {
    for j in 0..<i {
        print("\t", terminator: "")
    }
    
    print("\(c)\n", terminator: "")
}

let phrases = ["A couple", "A few or some", "Several or many"]

// Accessing each tuple value using the index by decomposing

for (x,y) in phrases.enumerate() {
    print("\(x) : \(y)")
}

// No need to decompose the tuple returned by enumerator method
// (t.0 + 2) = index   (t.1) = starting value

for t in phrases.enumerate() {
    print("For \(t.0 + 2) you can say, \"\(t.1).\"")
}


//: ### Where clause

// Where clause adds more conditional constraints in a loop
// Uses "where" to check if n is a prime number

let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]

for n in numbers where n.isPrime {
    print("\(n) is a prime number")
}


//: [Next](@next)
