public struct Example<Base> {
    let base: Base
    public init(_ base: Base) {
        self.base = base
    }
}

public protocol ExampleCompatible {
    associatedtype CompatibleType
    
    var ex: CompatibleType { get }
}

extension ExampleCompatible {
    public var ex: Example<Self> {
        return Example(self)
    }
}
