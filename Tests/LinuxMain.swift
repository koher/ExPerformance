import XCTest

import ExPerformanceTests

var tests = [XCTestCaseEntry]()
tests += ExPerformanceTests.allTests()
XCTMain(tests)