import XCTest
import ExPerformance

private let N = 10_000_000

final class ExPerformanceTests: XCTestCase {
    func testFooExample() {
        measure {
            let foo = Foo()
            var sum = 0
            for _ in 0..<N {
                sum += foo.ex.ab
            }
            XCTAssertEqual(sum, N * foo.ex.ab)
        }
    }

    func testFooDirect() {
        measure {
            let foo = Foo()
            var sum = 0
            for _ in 0..<N {
                sum += foo.ex_ab
            }
            XCTAssertEqual(sum, N * foo.ex_ab)
        }
    }

    func testBarExample() {
        measure {
            let bar = Bar()
            var sum = 0
            for _ in 0..<N {
                sum += bar.ex.ab
            }
            XCTAssertEqual(sum, N * bar.ex.ab)
        }
    }
    
    func testBarDirect() {
        measure {
            let bar = Bar()
            var sum = 0
            for _ in 0..<N {
                sum += bar.ex_ab
            }
            XCTAssertEqual(sum, N * bar.ex_ab)
        }
    }
    
    static var allTests = [
        ("testFooExample", testFooExample),
        ("testFooDirect", testFooDirect),
        ("testBarExample", testBarExample),
        ("testBarDirect", testBarDirect),
    ]
}
