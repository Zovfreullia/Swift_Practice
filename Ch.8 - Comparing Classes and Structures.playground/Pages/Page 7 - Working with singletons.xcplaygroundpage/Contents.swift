//: [Previous](@previous)

import Foundation

//: ## Working with Singletons

/*
    A singleton is an instance of a class that is instantiated only once. Maybe it's 
    computationally expensive to create or so widely used in a program that it just makes 
    sense to keep it around in a global context. Singletons are a common design pattern in 
    many programming languages.

    // Access Control

    For what we're doing here, all we need to know about access control at this point is that 
    in order for a class defined in a separate file in a playground to be accessible in the 
    main playground, the class and its properties and methods you want to expose, must be 
    marked "public."
*/

//let mySingleton = MySingleton()


let mySingletonB = MySingleton.sharedInstance
mySingletonB.title = "B"

let mySingletonA = MySingleton.sharedInstance
mySingletonA.title = "A"


print(mySingletonB.title)
print(mySingletonA.title)


/*
    When we print each instance's title property, they are both "B" because both constants 
    are pointing to the same singleton instance.
*/

//: [Next](@next)
