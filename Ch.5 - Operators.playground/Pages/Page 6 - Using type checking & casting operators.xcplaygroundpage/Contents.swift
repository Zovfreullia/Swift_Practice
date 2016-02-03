//: [Previous](@previous)

//: ## Using Type Checking and Casting Operators

import Foundation

class ClassA {
    var classAProperty = 867_5309
}

class ClassB: ClassA {
    var classBProperty = "Stay classy San Diego"
}

let a = ClassA()
let b = ClassB()

let arrayOfClassInstances = [a,b]

let item1 = arrayOfClassInstances[0]
item1.classAProperty

// Currently Cast A
let item2 = arrayOfClassInstances[1]

// Can also be Class B
item2 is ClassB

// Creates an instance of Class B from item2
let classBInstance = item2 as! ClassB
classBInstance.classBProperty

// Casts the class B as a Class A again
let classBActingAsClassAInstance = classBInstance as ClassA
//classBActingAsClassAInstance.classBProperty


class ClassC { }

let arrayOfanyObjects: [AnyObject] = [a, b, ClassC()]


let definitelyAClassAInstance = arrayOfanyObjects[0] as! ClassA

let maybeClassAInstance = arrayOfanyObjects[0] as? ClassA

maybeClassAInstance?.classAProperty


(arrayOfClassInstances[1] as? ClassB)?.classBProperty
(arrayOfClassInstances[1] as? ClassB)?.classAProperty



//: [Next](@next)

