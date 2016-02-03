//: [Previous](@previous)

//: # Class Intance Properties

import Foundation

// * Blueprints for creating traditional "objects"
// * Instances of any type referred to as "instances"
// * Classes can have properties, methods, and subscripts
// * Can inherit and adopt protocols
// * Can have initializers and a deinitializer
// * Can be extended

// Choose a class when you need to store complex data types or when
// inheritance or having multiple references to the same
// instance are needed or anticipated.


protocol Protocol1 { }
protocol Protocol2 { }


/**
 Declare a class
 */
class MyClass {
    // Properties, initializers, deinitializers, methods, subscripts
}

/**
 Declare a subclass. Classes can only inherit from a single super class
 but they can adopt multiple protocols.
 */
class MySubclass: MyClass, Protocol1, Protocol2 {
    // Properties, initializers, deinitializers, methods, subscripts
}



class MotorVehicle {
    // make it an optional var property because we don't know the value et
    // classes must esnure that all non-optional properties are set on
    // initialization which can be accomplished by either setting
    // a default initial value in the property definition and or by
    // setting its value in an initializer.
    var numberOfWheels: Int?
    var passengerCapacity = 4
    let topSpeedMph: Int
    var bodyColor: String {
        willSet {
            
            // property observers not called during initialization
            print("Will be painted \(newValue)")
        }
        
        didSet {
            // property observers not called during initialization
            print("Was previously \(oldValue)")
        }
    }
    var manufacturerName = ""
    var ownerName = ""
    var model = ""
    
    // Classes can define ** computed properties that do not store value directly but
    // use a getter and, optionall, a setter to retrieve and set other properties
    // or values indirectly.
    // Computed properties must be variables and have their type explicity declared
//    var makeAndModel: (String, String) {
//        get {
//            return (manufacturerName, model)
//        }
//        
//        set {
//            manufacturerName = newValue.0
//            model = newValue.1
//        }
//    }
    
    var makeAndModel: (make: String, model: String) {
        get {
            return (manufacturerName, model)
        }
        
        set (newMakeAndModel) {
            manufacturerName = newMakeAndModel.make
            model = newMakeAndModel.model
        }
    }
    
    
    var topSpeedKph: Int {
        return Int(Double(topSpeedMph) * 1.60934)
    }
    
    // A lazy stored property is a property whose initial value is not calculated until the
    // first time it is used. You indicate a lazy stored property by writing the lazy modifier 
    // before its declaration.
    
    lazy var fuelEfficiencyMpg = {
        (arc4random_uniform(3) + 2) * 15
    } ()
    
    
    
    // Initializers
    // func keyword is omitted because initializers do not return values
    // ensure all non-optional values have been assigned a value
    init(topSpeedMph: Int, bodyColor: String) {
        
        // Using the self keyword to distinguish between the parameter
        // and the property
        self.topSpeedMph = topSpeedMph
        self.bodyColor = bodyColor
    }
    
    // Convenienec keyword must be written before init for any initializer that calls
    // another initializer. They can delegate to another convenience initializer
    // or to a designated initializer.
    // This calls '(topSpeedMph: Int, bodyColor: String)'
    convenience init(topSpeedMph: Int) {
        self.init(topSpeedMph: topSpeedMph, bodyColor: "blue")
    }
    
    // This calls '(topSpeedMph: Int)'
    convenience init(topSpeedMph: Int, numberOfWheels: Int) {
        self.init(topSpeedMph: topSpeedMph)
        self.numberOfWheels = numberOfWheels
    }
    
    
    
    // Write a question mark after convenience init to mark that
    // the initializer is failable
    // Failable convenience initializer
    convenience init? (manufacturerName: String?, topSpeedMph: Int, bodyColor: String) {
        self.init(topSpeedMph: topSpeedMph, bodyColor: bodyColor)
        guard let name = manufacturerName where name.isEmpty == false else {
            return nil
        }
        self.manufacturerName = name
    }
    
    convenience init! (ownerName: String?, topSpeedMph: Int, bodyColor: String) {
        self.init(topSpeedMph: topSpeedMph, bodyColor: bodyColor)
        
        // is name not empty if it is then return nil
        guard let name = ownerName where name.isEmpty == false else {
            return nil
        }
        self.ownerName = name
    }
}

// properties can be created as constants without assigning a default
// value to them because they will be initialized with a value
// to hide the first parameter name "topSpeedMph" write a _ before
// the name parameter in the initializer

let bugattiVeyronSuperSport = MotorVehicle(topSpeedMph: 267)
let cartwo = MotorVehicle(topSpeedMph: 300)
cartwo.bodyColor

let carThree = MotorVehicle(topSpeedMph: 200, numberOfWheels: 4)
carThree.bodyColor

let granTurismo = MotorVehicle(manufacturerName: "Maserati", topSpeedMph: 185, bodyColor: "blue")!

granTurismo.numberOfWheels = 4

// Stored variable properties, that is, not constants and not computed
// properties can have property observers defined that will be called
// whenever the property is set


// ** willSet is called right before a newly set value is stored
granTurismo.topSpeedKph

granTurismo.bodyColor = "red"

granTurismo.fuelEfficiencyMpg
granTurismo.fuelEfficiencyMpg = 80

let carFour = MotorVehicle(ownerName: "Kaira", topSpeedMph: 900, bodyColor: "green")
carFour.manufacturerName = "Subaru"



//: [Next](@next)
