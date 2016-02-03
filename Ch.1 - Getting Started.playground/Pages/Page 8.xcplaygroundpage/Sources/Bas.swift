import Foundation

public struct Bas {
    
    public init() { }
    
    public var address = "100 Avenue The Shire"
    
    public func sayHi(){
        print("Hey, I'm from \(address)")
    }
    
    public func getAddress(address: String){
        print("This is your address: \(address)")
    }
    
}