//: [Previous](@previous)

import Foundation

//: ## Using Labels

// Looping and conditional statements can be labeled and used in conjuction with
// the continue or break control transfer statements to trasnfer program
// to flow to a specifically labeled statement.

// The ability to create nested scope using a do statement

var i = 0
let hello = "Hello Playground"

// "continue start" will transfer program flow back up to the 
// do statement with the start label, which is now a loop

start: do {
    i++
    
    do{
        print("hello")
        
        if i < 3 {
            continue start
        }
    }
}


//: ### Redirect control flow in while loops

// Changed while false to while true to cure the infinite loop issue
// by using labels
start: while true {
        let speed = arc4random_uniform(50) + 50
        
        switch speed {
        case 55:
            print("I CAN drive 55!")
            
            // When 55 s matched, break start will transfer control  
            // out of the while loop
            break start
        case _ where speed > 70:
            print("I can't drive \(speed)!")
            
            // continue start will transfer control right back up
            // to the while loop avoiding the if speed > 70 statement
            continue start
        default:
            break
        }
        
        if speed > 70 {
            print("You were going \(speed). Here's your ticket!")
        }
}



//: [Next](@next)
