//
//  Attributes.swift
//  HLS File GeneratorTests
//
//  Created by Nicolás A. Rodríguez on 7/8/20.
//

import XCTest
@testable import HLS_File_Generator

class AttributesTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func AttributeKeyValue_Test() throws {
//        let attribute = AttributeKeyValue(attributes: [("Test", .unQuoted("123"))])
//        XCTAssertEqual(attribute.render(), "TEST=123")
        
        let attribute2 = AttributeKeyValue(attributes: [("Test", .unQuoted("123")),("Test2", .unQuoted("321"))])
        
        XCTAssertEqual(attribute2.render(), "TEST=123,TEST2=321")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
