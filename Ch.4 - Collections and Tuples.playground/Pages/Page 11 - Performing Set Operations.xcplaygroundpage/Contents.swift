//: [Previous](@previous)

//: ## Performing Set Operations

let campAttendees : Set = ["Charlotte", "Laura", "Lilli", "Carlee", "Nathan"]

var students : Set = ["Charlotte", "Laura", "Kayleigh", "Kayla", "Boz", "Jake"]

students.insert("Charlotte")


// returns a set of students that are also camp attendees
print(students.intersect(campAttendees))

// returns values in either sets but not both sets
print(students.exclusiveOr(campAttendees))

// union returns two sets together removing duplicates
print(students.union(campAttendees))

// subctract returns a new set with values not in the past inset
print(students.subtract(campAttendees))





//: [Next](@next)
