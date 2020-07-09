//
//  ElementsTest.swift
//  HLS File GeneratorTests
//
//  Created by Nicolás A. Rodríguez on 7/8/20.
//

import XCTest
@testable import HLS_File_Generator

class ElementsTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_createElement() throws {
        let element = Element<BasicTags>(name: "EXT-X-STREAM-INF", attribute: AttributeKeyValueAndTrailingValue(attributes: [(key: "BANDWIDTH", value: .unQuoted("1280000"))], trailingValue: "low/video-only.m3u8"))
        print(element.render())
        XCTAssertEqual(element.render(), "#EXT-X-STREAM-INF:BANDWIDTH=1280000\nlow/video-only.m3u8")
        
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
