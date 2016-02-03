public func ==(a: ThisClass, b: ThisClass) -> Bool {
    return a.title == b.title
}

public class ThisClass {
    public var title = "ThisClass"
    public init() { }
}

