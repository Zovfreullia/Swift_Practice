//: [Previous](@previous)

//: ## Using Guard

import Foundation


// the guard statement executes the body of code in ts else clause
// runs the conditional statement if executed false

// Who should be allowed in the club 21 and over

let twentyOnesBirthday = NSDate().dateByAddingTimeInterval(-31_536_000 * 21)

// Birthdays are instances of NSDate

let peopleInLine = ["Joey": joeysBirthday,
                    "Brenda": brendasBirthday,
                    "Chris": chrisBirthday,
                    "Oliver": oliversBirthday]

// .earlierDate method checks whether birthday is earlier
// than the twenty one birthday, and if it is hence ==
// then it will execute the guard statement

//: Continue 
// continue is a control-transfer statement
// "continue" statements after guard are required right before
// closing the closing curly brace, so it skips to the beginning
// of the next iteration of the loop so that the code below
// will not be executed for that object
// continue is only allowed inside a loop

for (name, birthday) in peopleInLine {
    guard birthday.earlierDate(twentyOnesBirthday) == birthday else {
        print("Not old enough: \(name) : \(birthday)")
        continue
    }
    print("Can enter: \(name) : \(birthday)")
}


//: Guard statements with value binding

// Unlike if statements, values assigned in a guard
// statement are still available after the guard statement

// Indicate if a life guard is on duty
// If lifeguard is is nil then it will execute the guard

func updateSignForLifeguardonDuty(lifeguardOnDuty: String?) {
    guard let lifeguardName = lifeguardOnDuty else {
        print("No lifeguard on duty")
        return
    }
    
    print("Lifeguard on duty: \(lifeguardName)")
}

updateSignForLifeguardonDuty(nil)
updateSignForLifeguardonDuty("Derek")

//: [Next](@next)
