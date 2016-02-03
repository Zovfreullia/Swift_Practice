//: [Previous](@previous)

import Foundation

//: ## Currying

// A programming technique that can be used to replace a multi-parameter function
// with a single parameter curried function. The curried function can store
// one or more bound parameter values that can be used in calls of the
// curried function.

// Moving the return function as a second parameter list, leaving its
// return type as the return type of the now curried function.


//func getLineItemAdder(product: String, price: Double) -> (Int) -> String {
//    func addLineItem(quantity: Int) -> String {
//        
//    }
//}

func addLineItem(product: String, price: Double) (quantity: Int) -> String {
    let discountMultiplier: Double
    switch quantity {
    case 1...10:
        discountMultiplier = 1.0
    case 11...20:
        discountMultiplier = 0.9
    default:
        discountMultiplier = 0.8
    }
    
    return String(format: "\(quantity) of \(product) at $%.2f each = $%.2f", price * discountMultiplier, Double (quantity) * price * discountMultiplier)
}


let sellCustomTShirt = addLineItem("Custom T-Shirt", price: 10.0)

var lineItem = sellCustomTShirt(quantity: 5)

// Use a single parameter for a function with many parameters
// the second time it is called

func buyCandies(product: String, price: Double) (quantity: Int) -> String {
    return String(format: "Amount: \(quantity) \n Price: $%.2f \n Product: \(product)", price * Double (quantity))
}

let sellCandy = buyCandies("Sour Gummies", price: 1.50)

var buyCandy = sellCandy(quantity: 10)


//: [Next](@next)
