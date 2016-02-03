//: [Previous](@previous)

//: ## Modifying Sets

let campAttendees : Set = ["Charlotte", "Laura", "Lilli", "Carlee", "Nathan"]

var students : Set = ["Charlotte", "Laura", "Kayleigh", "Kayla", "Boz", "Jake"]


students.insert("Bob")

//let bob = students.remove("Bob")

let indexOfBob = students.indexOf("Bob")

students.removeAtIndex(indexOfBob!)

// students, union in place, camp attendees inserts all
// the values from the camp attendees that are not
// already in students

students.unionInPlace(campAttendees)





//: [Next](@next)
