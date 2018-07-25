public class Bar {
    public var a: Int = 1
    public var b: Int = 2
    public var c: Int = 3
    public var d: Int = 4
    public var e: Int = 5
    public var f: Int = 6
    public var g: Int = 7
    public var h: Int = 8
    public var i: Int = 9
    public var j: Int = 10
    
    public init() {}
}

extension Bar {
    public var ex_ab: Int {
        return a + b
    }
}

extension Bar: ExampleCompatible {
//    public var ex: Example<Bar> {
//        return Example(self)
//    }
}

extension Example where Base == Bar {
    public var ab: Int {
        return base.a + base.b
    }
}
