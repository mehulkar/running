import XCTest
@testable import running

class runningTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(running().text, "Hello, World!")
    }


    static var allTests : [(String, (runningTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
