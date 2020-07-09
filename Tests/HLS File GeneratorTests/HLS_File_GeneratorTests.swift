import Foundation
import XCTest
@testable import HLS_File_Generator

final class HLS_File_GeneratorTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(HLS_File_Generator().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
