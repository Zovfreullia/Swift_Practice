//: [Previous](@previous)

//: ## Using Switch

import Foundation

// Switch cases are used for handling multiple states

let dice1 = [1, 2, 3, 4, 5, 6].randomItem()
let dice2 = [1, 2, 3, 4, 5, 6].randomItem()


// Write the switch keyword followed by the value you
// want to switch on.
// Each case clause is defined by writing the case keyword
// followed by a pattern matching expression, colon, and
// executable expression typically written on the next line.

switch (dice1, dice2) {
case (1,1):
    fallthrough
case(6,6):
    print("30 points")
case (1...2, 1...2):
    print("16 points")
case _ where dice1 + dice2 == 7:
    print("5 points")
case let (thrown, _) where dice1 == dice2:
    
    switch thrown * 2 {
    case 4,10:
        print("8 points")
    default:
        print("10 points")
    }
case let (roll, _) where dice1 < dice2:
    switch roll - 1 {
    case 1,2,3,4,5,6:
        print("You win all things")
    default:
        print("Poop")
    }
default:
    break
}

// In Swift, break automatically happens
// The only time a break must be written is if a case does not
// contain at least one executable statement.



//: [Next](@next)
