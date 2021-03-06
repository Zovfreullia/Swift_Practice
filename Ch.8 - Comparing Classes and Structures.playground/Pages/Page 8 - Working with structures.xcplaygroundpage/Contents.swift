//: [Previous](@previous)

import Foundation

//: ## Working with Structures


/*
    When choosing between a structure or a class, choose a structure if 
    you mostly or only need to store simple value types and do not need to 
    inherit properties or methods and the pass-by copy semantics of structures 
    don't get in the way or cause confusion.
*/

let aString: String?

protocol Protocol1 { }
protocol Protocol2 { }

struct MyStruct {
    // Properties, initializers, methods, subscripts
}


/// Cannot inherit other structures but can inherit one or more protocols
struct ProtocolAdoptingStruct: Protocol1, Protocol2 {
    // Properties, initializers, methods, subscripts
}

struct Coordinate3D {
    /**
        Structures that do not define a custom initializer have a default 
        memberwise initializer automatically created.
     */
    // Instance properties
    let x, y, z: Int
    var label: String? {
        didSet {
            let oldLabel = oldValue ?? "(was not labeled)"
            let newLabel = label ?? "(label removed)"
            print("old label \(oldLabel) and new label \(newLabel)")
        }
        
    }
    
    // Computed Property
    
    var description: String {
        var d = ""
        
        if let label = label where label.isEmpty == false {
            d += "\(label)"
        }
        
        d += "\(x), \(y), \(z)"
        return d
    }
    
    
    // Initializer
    init (coordinate: (x: Int, y: Int, z: Int), label: String? = nil) {
        x = coordinate.x
        y = coordinate.y
        z = coordinate.z
        self.label = label
    }
    
    // Convenience initializer
    init(x: Int) {
        self.init(coordinate: (x: x, y: x, z: x), label: "(unlabeled)")
    }
    
    
    // Type methods
    static func printDistanceBetweenTwoCoordinate3Ds(a: Coordinate3D, b: Coordinate3D) {
        let x = Double(a.x - b.x)
        let y = Double(a.y - b.y)
        let z = Double(a.z - b.z)
        let distance = sqrt((x * x) + (y * y) + (z * z))
        let distanceString = String(format: "Distance from \(a.description) to \(b.description) is %.1f", distance)
        print(distanceString)
    }
}



//let origin = Coordinate3D(x: 0, y: 0, z: 0, label: "Origin")

let origin = Coordinate3D(coordinate: (x: 0, y: 0, z: 0), label: "Origin")

var destination = Coordinate3D(coordinate: (x: 10, y: 20, z: 30))
destination.label = "Destination"
print(destination.description)


Coordinate3D.printDistanceBetweenTwoCoordinate3Ds(origin, b: destination)

//: [Next](@next)
