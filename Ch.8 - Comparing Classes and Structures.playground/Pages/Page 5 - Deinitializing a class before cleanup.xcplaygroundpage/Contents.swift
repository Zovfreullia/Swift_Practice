//: [Previous](@previous)

//: # Deinitializing Class Before Cleanup

import Foundation


protocol Protocol1 { }
protocol Protocol2 { }

class MyClass {
}


class MySubclass: MyClass, Protocol1, Protocol2 {
}

class MotorVehicle {
    
//: Type Properties
    static var count = 0
    
    
    var numberOfWheels: Int?
    var passengerCapacity = 4
    let topSpeedMph: Int
    var bodyColor: String {
        willSet {
            print("Will be painted \(newValue)")
        }
        
        didSet {
            print("Was previously \(oldValue)")
        }
    }
    var manufacturerName = ""
    var ownerName = ""
    var model = ""
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
    
    lazy var fuelEfficiencyMpg = {
        (arc4random_uniform(3) + 2) * 15
    } ()
    
    var engineRunning = false
    var currentSpeedMph = 0
    
    
//: Initializers
    init(topSpeedMph: Int, bodyColor: String) {
        self.topSpeedMph = topSpeedMph
        self.bodyColor = bodyColor
        
        // Initialize by calling print
        print("MotorVehicle count: \(++MotorVehicle.count)")
    }
    
    convenience init(topSpeedMph: Int) {
        self.init(topSpeedMph: topSpeedMph, bodyColor: "blue")
    }
    
    convenience init(topSpeedMph: Int, numberOfWheels: Int) {
        self.init(topSpeedMph: topSpeedMph)
        self.numberOfWheels = numberOfWheels
    }
    
    convenience init? (manufacturerName: String?, topSpeedMph: Int, bodyColor: String) {
        self.init(topSpeedMph: topSpeedMph, bodyColor: bodyColor)
        guard let name = manufacturerName where name.isEmpty == false else {
            return nil
        }
        self.manufacturerName = name
    }
    
//: Deinitializer
    /*
        Classes can optionally implement a deinitializer such as to perform clean- up before an 
        instance is deallocated. Let's add a deinitialzer to decrement the type property count and 
        print it out when a motor vehicle instance is going to be deallocated.
    
    
        A class can have only one deinitializer. It is defined using the deinit keyword as we 
        see here similar to how an init method is defined, that is without writing the 
        func keyword, and deinit does not take any parameters.
    */
    
    deinit {
        print("MotorVehicle count: \(--MotorVehicle.count)")
    }
    
//: Type methods
    
    /**
        Type methods can be used for a variety of purposes, such as a to create a
        factory method.
    */
    
    static func newMotorVehicleOfMake(make: String, model: String, topSpeedMph: Int, bodyColor: String, passengerCapacity: Int, numberOfWheels: Int? = nil) -> MotorVehicle {
        
        let motorVehicle = MotorVehicle(manufacturerName: make, topSpeedMph: topSpeedMph, bodyColor: bodyColor)!
        
        motorVehicle.model = model
        motorVehicle.passengerCapacity = passengerCapacity
        motorVehicle.numberOfWheels = numberOfWheels
        return motorVehicle
    }
    
    
    convenience init! (ownerName: String?, topSpeedMph: Int, bodyColor: String) {
        self.init(topSpeedMph: topSpeedMph, bodyColor: bodyColor)
        guard let name = ownerName where name.isEmpty == false else {
            return nil
        }
        self.ownerName = name
    }
    
//: Instance Methods
    
    func startEngine() {
        
        // check if the engine isn't already running
        guard engineRunning == false else { return }
        engineRunning = true
        print("Vroom!")
    }
    
    func adjustSpeedToMph(mph: Int) {
        guard engineRunning && currentSpeedMph != mph else { return }
        let increment = (mph - currentSpeedMph) / 5
        
        for _ in currentSpeedMph.stride(through: mph, by: increment) {
            print("\(currentSpeedMph)...", terminator: "")
            currentSpeedMph += increment
        }
        
        currentSpeedMph = mph
        print("Now traveling \(currentSpeedMph) mph")
    }
    
    
}

let bugattiVeyronSuperSport = MotorVehicle(topSpeedMph: 267)
let granTurismo = MotorVehicle(manufacturerName: "Maserati", topSpeedMph: 185, bodyColor: "blue")!

granTurismo.numberOfWheels = 4
granTurismo.topSpeedKph
granTurismo.bodyColor = "red"
granTurismo.fuelEfficiencyMpg
granTurismo.fuelEfficiencyMpg = 80
granTurismo.startEngine()
granTurismo.adjustSpeedToMph(500)
granTurismo.adjustSpeedToMph(0)

var landspeeder: MotorVehicle? = MotorVehicle.newMotorVehicleOfMake("SoroSuub", model: "X-34", topSpeedMph: 155, bodyColor: "sandyBrown", passengerCapacity: 2)

/*
    Now, when we set our landspeeder variable to nil, count is decremented and then printed out.
*/

landspeeder = nil



//: [Next](@next)
